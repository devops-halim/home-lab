#!/bin/bash

# Function to run commands as sudo if not root
run_as_sudo() {
    if [ "$(id -u)" -ne 0 ]; then
        sudo "$@"
    else
        "$@"
    fi
}

# Update and install prerequisites
echo "Updating package list and installing prerequisites..."
run_as_sudo apt update -y
run_as_sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    jq

# Remove any existing Docker repository to avoid conflicts
echo "Cleaning up any old Docker repositories..."
run_as_sudo rm -f /etc/apt/sources.list.d/docker.list

# Use Docker's official script for installation
echo "Running Docker's installation script..."
curl -fsSL https://get.docker.com -o get-docker.sh
run_as_sudo sh get-docker.sh

# Verify Docker installation
echo "Verifying Docker installation..."
run_as_sudo systemctl start docker
run_as_sudo systemctl enable docker
docker --version

# Install Docker Compose
echo "Installing Docker Compose..."
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r .tag_name)
run_as_sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
run_as_sudo chmod +x /usr/local/bin/docker-compose

# Verify Docker Compose installation
echo "Verifying Docker Compose installation..."
docker-compose --version

# Add user to docker group (to avoid using sudo every time)
echo "Adding user to docker group..."
if [ "$(id -u)" -ne 0 ]; then
    run_as_sudo usermod -aG docker $USER
fi

# Final message
echo "Docker and Docker Compose installation complete."
echo "Please log out and log back in for group changes to take effect."