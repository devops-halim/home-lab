# https://docs.gitlab.com/omnibus/settings/ssl/
external_url "https://gitlab.example.com"
letsencrypt['enable'] = false
nginx['listen_port'] = 80
nginx['listen_https'] = false
gitlab_ralis['gitlab_shell_ssh_port'] = 222
