FROM iobrokerk8s/base-adapter:latest

RUN npm install iobroker.loxone && npm cache clean --force

ENV IOB_K8S_ADAPTER=loxone