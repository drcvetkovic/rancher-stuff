
TAG=${1:-v2.3.5}
echo Using tag $TAG

docker run -d --privileged --restart=unless-stopped -p 80:80 -p 443:443 -v /opt/rancher/etc/rancher:/etc/rancher -v /opt/rancher/var/lib/rancher:/var/lib/rancher rancher/rancher:$TAG

