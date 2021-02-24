
TAG=${1:-v2.3.5}
SERVER=${2:-localhost}
sudo docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run rancher/rancher-agent:${TAG} --server https://${SERVER} --token tc9h6fx2q8t7hp27svpqnn652jhwn8877522sdl2dmjkd8kwn5f7tq --ca-checksum b7b4b175494cc101c8b13f721868578afa51985f17f9447e03e722d25c0ad52f --etcd --controlplane --worker
