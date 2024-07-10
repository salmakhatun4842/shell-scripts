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
