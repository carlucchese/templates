# Ubuntu image
FROM ubuntu:jammy
# Update and installs basic packages
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
# Install Docker
RUN apt install docker.io -y
# Download the public signing key for the Kubernetes package repositories
RUN curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
# Add the appropriate Kubernetes apt repository:
RUN echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | tee /etc/apt/sources.list.d/kubernetes.list
# Update the apt package index, install kubelet, kubeadm and kubectl, and pin their version
RUN apt-get update  && \
    apt-get install -y kubelet kubeadm kubectl  && \
    apt-mark hold kubelet kubeadm kubectl
# Cleaning
RUN apt-get clean
# Copiamos el script de entrada
COPY docker-entrypoint.sh /docker-entrypoint.sh
# Establecemos permisos de ejecución
RUN chmod +x /docker-entrypoint.sh
#
#CMD ["/bin/bash"]
# Comando de entrada
CMD ["/docker-entrypoint.sh"]