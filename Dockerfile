FROM ubuntu:22.04

WORKDIR /app

# Install dependencies
RUN apt-get update && \
 apt-get -y install wget

ARG FUTUOPEND_VER
ENV FUTUOPEND_NAME=FutuOpenD_${FUTUOPEND_VER}_NN_Ubuntu16.04

# Download FutuOpenD and extract it to the working directory
RUN wget -O - https://softwarefile.futunn.com/${FUTUOPEND_NAME}.tar.gz | tar -xzf - --strip=1 ${FUTUOPEND_NAME}/${FUTUOPEND_NAME} -C /app

RUN ln -s /app/${FUTUOPEND_NAME} /futuopend

ENV PATH=/futuopend:${PATH}

CMD ["FutuOpenD"]
