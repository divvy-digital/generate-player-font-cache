mkdir -p ~/.ssh
echo "$DEPLOY_KEY" > ~/.ssh/id_rsa
ssh-keyscan github.com >> ~/.ssh/known_hosts

ssh-agent -a $SSH_AUTH_SOCK > /dev/null
chmod 0600 ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa
