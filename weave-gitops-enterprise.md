
Download weave gitops 
```bash
curl --silent --location "https://github.com/weaveworks/weave-gitops/releases/download/v0.6.2/gitops-$(uname)-$(uname -m).tar.gz" | tar xz -C /tmp
sudo mv /tmp/gitops /usr/local/bin
```

Create a gitrepo
```bash
gh repo create --public owainperry/gitops-test
```



