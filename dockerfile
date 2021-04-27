FROM bitnami/kubectl
USER root:root

COPY kubectl-argo-rollouts-linux-amd64 / 
RUN chmod +x ./kubectl-argo-rollouts-linux-amd64 \
    && mv /kubectl-argo-rollouts-linux-amd64 /usr/local/bin/kubectl-argo-rollouts
