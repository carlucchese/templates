#!/bin/bash
# Inicializa el clúster de Kubernetes con kubeadm
swapoff -a
kubeadm init

# Copia el archivo de configuración para que kubectl pueda acceder al clúster
mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config

# Opcionalmente, instala un complemento de red (e.g., Calico)
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

# Mantén el contenedor en ejecución
tail -f /dev/null
