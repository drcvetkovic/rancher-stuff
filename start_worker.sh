TAG=${1:-v2.3.5}
SERVER=${2:-localhost}
docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run rancher/rancher-agent:${TAG} --server https://${SERVER} --token xr7scrmsz5fr4hgr4n627jf6cpwkpls4t6xmh5dsctmppghmn7qfxh --ca-checksum d5cbf5040b72f907f9ad633e1f70932a4f002518259e545539e6350bd330c845 --worker

