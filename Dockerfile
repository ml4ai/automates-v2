FROM        ubuntu:19.10
MAINTAINER  Paul D. Hein <pauldhein@email.arizona.edu>
CMD         bash

# ==============================================================================
# INSTALL SOFTWARE VIA THE UBUNTU PACKAGE MANAGER
# ==============================================================================
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y --no-install-recommends install \
  git \
  curl \
  build-essential \
  gcc \
  pkg-config \
  python3 \
  python3-dev \
  python3-pip

RUN git config --global user.email "pauldhein@email.arizona.edu"
RUN git config --global user.name "Paul Hein"
# ==============================================================================

# ==============================================================================
# INSTALL PYTHON PACKAGES VIA PIP
# NOTE: Packages are installed in stages to avoid memory errors on DockerHub
# ==============================================================================
# Upgrading setuptools and installing wheel
RUN pip3 install --upgrade setuptools
RUN pip3 install wheel

# Common-use and testing packages
RUN pip3 install sphinx ruamel.yaml
# ==============================================================================

# ==============================================================================
# SETUP THE AUTOMATES REPOSITORY AND ENVIRONMENT
# ==============================================================================
RUN git clone https://github.com/ml4ai/automates-v2.git
ENV PYTHONPATH="/automates-v2/src:$PYTHONPATH"
WORKDIR /automates-v2
# ==============================================================================
