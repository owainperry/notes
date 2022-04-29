
Download weave gitops 
```bash
curl --silent --location "https://github.com/weaveworks/weave-gitops/releases/download/v0.6.2/gitops-$(uname)-$(uname -m).tar.gz" | tar xz -C /tmp
sudo mv /tmp/gitops /usr/local/bin
```

Create a gitrepo
```bash
gh repo create --public owainperry/gitops-test
```

Fork pod info
```bash
 gh repo fork wego-example/podinfo-deploy  --fork-name podinfo-deploy1
```

Create kind cluster 
```bash
kind create cluster --name wge
```

install onto cluster 
```bash
export GITHUB_TOKEN=$(cat ~/.github_token)
gitops install --config-repo git@github.com:owainperry/gitops-test 
```