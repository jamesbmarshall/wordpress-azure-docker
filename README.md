# wordpress-azure-docker
Set of scripts to create a Ubuntu VM with Docker + nginx + Wordpress + letsencrypt + MySQL

### Demo wordpress with docker

1. Edit docker-compose.yml file to replace <YOUR DOMAIN> with your domain and /`<YOUR DOMAIN>`/ folders with your host storage folder names
2. Edit docker-compose.yml to set Wordpress password for DB and Wordpress instance
3. Edit docker-compose.yml to enter domain owner email address for LETSENCRYPT
4. Edit create-azuredocker.cmd to specify `<USERNAME>` for VM.
4. Edit run-letsencrypt.cmd and run-nginx.cmd to update `<USERNAME>` with the one specificed when you created the Azure VM.

### Running the containers

1. Set env to remote docker host using docker-machine env command
2. Run docker-machine ls to ensure active host is enabled
3. From the command prompt run:

    `1. run-nginx.cmd`

    `2. run-letsencrypt.cmd`
    
    `3. run-wp.cmd`