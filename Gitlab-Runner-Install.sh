#!/bin/bash

# Install Binary
sudo curl -L --output /usr/local/bin/gitlab-runner "https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64"

# Execute Permission
sudo chmod +x /usr/local/bin/gitlab-runner

# Creating "gitlab-runner" USER
sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

# Installing and running as Service
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
sudo gitlab-runner start

echo "Registering to Gitlab"
sudo gitlab-runner register
