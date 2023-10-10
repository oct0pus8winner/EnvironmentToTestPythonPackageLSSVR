#FROM ubuntu:22.04
FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

# maybe obtain useless
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get -y install --no-install-recommends \
    build-essential \
    gcc \
    python3-dev \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --upgrade pip
# COPY requirements.txt .
COPY requirements.txt /app/requirements.txt
RUN python3 -m pip install --no-cache-dir -r /app/requirements.txt
WORKDIR /app/

CMD ["bash"]
