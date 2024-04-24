FROM alpine:3.19

ARG KUSTOMIZE="https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv5.4.1/kustomize_v5.4.1_linux_amd64.tar.gz"

WORKDIR /work

RUN apk --no-cache add curl
RUN curl -L --remote-name-all -okustomize.tgz ${KUSTOMIZE} && tar -xvzf kustomize.tgz && mv kustomize /usr/local/bin

