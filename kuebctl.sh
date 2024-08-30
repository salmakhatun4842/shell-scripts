curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Create the below file
sudo touch /etc/apt/sources.list.d/kubernetes.list

echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list

# Update package manager
sudo apt-get update

# Install
sudo apt-get install -y kubectl

# Verify if kubectl got installed
kubectl version --client
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin
kubectl version --short --client

