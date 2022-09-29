# matrix-kubernetes
A full suite of matrix deployments (synapse workers, element, admin) for kubernetes using ansible

This playbook depends on a couple things to work:

1. Traefik for managing TLS termination and ingresses
2. Cert manager for managing certificates automatically

# Install requirements for ansible

```
ansible-galaxy collection install -r requirements.yml
```

# Setup

1. Go through the `group_vars/all.yml` file and ensure everything is up to your specifications.

# Running the playbook

## Deploying everything

```
ansible-playbook ./site.yml --tags everything
```