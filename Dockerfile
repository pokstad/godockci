FROM golang:1.11-alpine

# Prereqs
RUN apk add curl make

# Install gometalinter
ARG GOMETA_V=2.0.11
ARG GOMETA_SHA2=97d8bd0a4d024740964c7fc2ae41276cf5f839ccf0749528ca900942f656d201
ARG GOMETA_URL=https://github.com/alecthomas/gometalinter/releases/download/v${GOMETA_V}/gometalinter-${GOMETA_V}-linux-amd64.tar.gz
ARG GOMETA_TMP=/tmp/gometa.tar.gz
ARG GOMETA_LOCAL=/usr/local/gometalinter-${GOMETA_V}-linux-amd64

RUN curl -L -o ${GOMETA_TMP} ${GOMETA_URL} && \
	echo "${GOMETA_SHA2}  ${GOMETA_TMP}" | sha256sum -c && \
	mkdir -p ${GOMETA_LOCAL} && \
	tar -xvf ${GOMETA_TMP} -C /usr/local && \
	rm ${GOMETA_TMP}

# Update path to include Gometalinter
ENV PATH=${PATH}:${GOMETA_LOCAL}
