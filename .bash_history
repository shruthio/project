sudo -s
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kops 
chmod +x kubectl 
mv kops /usr/local/bin
ls
sudo mv kops /usr/local/bin
sudo mv kubectl /usr/local/bin/kubectl
aws s3 ls
aws configure
aws s3 ls
export AWS_ACCESS_KEY_ID= AKIAZEDXY7FIRSCN5P6J
export AWS_SECRET_ACCESS_KEY=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
AWS s3 ls
aws s3 ls
export KOPS_STATE_STORE=s3://dora456
ls
export NAME=damo.k8s.local
kops create cluster --zones us-east-1a ${NAME}
kops update cluster --name damo.k8s.local --yes --admin
