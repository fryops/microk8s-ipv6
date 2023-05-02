IPV6_CIDR="fd26:168:1c80:ae62::/64"

(cd patches && ./patch-microk8s.sh $IPV6_CIDR)
sudo microk8s refresh-certs
# microk8s stop && microk8s start
sudo systemctl restart snap.microk8s.daemon-proxy.service

(cd patches && ./patch-kubernetes.sh $IPV6_CIDR)
