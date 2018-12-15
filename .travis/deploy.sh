eval "$(ssh-agent -s)" # Start ssh-agent cache
chmod 600 .travis/id_rsa # Allow read access to the private key
ssh-add .travis/id_rsa # Add the private key to SSH

ssh -o StrictHostKeyChecking=no travis@aquaems.com "/home/travis/deploy_aquaems.sh"

exit 0
