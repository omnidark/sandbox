FROM bitnami/kubectl
USER root:root

COPY kubectl-argo-rollouts-linux-amd64 /
COPY argocd-linux-amd64 /
RUN chmod +x ./kubectl-argo-rollouts-linux-amd64 \
    && mv /kubectl-argo-rollouts-linux-amd64 /usr/local/bin/kubectl-argo-rollouts \
    && chmod +x ./argocd-linux-amd64 \
    && mv /argocd-linux-amd64 /usr/local/bin/argocd