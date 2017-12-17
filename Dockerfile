FROM ubuntu:14.04

RUN apt-get -y update && \
    apt-get -y upgrade
RUN apt-get -y install build-essential && \
    apt-get -y install cmake git && \
    apt-get -y install zlib1g zlib1g-dev zlib1c libbz2 libbz2-dev libicu-dev libexpat1 libexpat1-dev

# install BOOST
RUN apt-get -u install libboost-all-dev

echo "HAVE_ICU=1" >> /etc/environment


# X Windows minimum
RUN apt-get -y install xauth xorg

# X Windows Manager
# RUN apt-get -y install openbox

# Ubuntu 14.04: http://www.copperspice.com/docs/cs_overview/requirements-x11.html
RUN apt-get -y install libfreetype6-dev libfontconfig1-dev libglib2.0-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libice-dev libaudio-dev libgl1-mesa-dev libc6-dev libsm-dev libxcursor-dev libxext-dev libxfixes-dev libxi-dev libxinerama-dev libxrandr-dev libxrender-dev libxt6 libx11-dev 

RUN apt-get -y install wget bunzip2
RUN wget -c http://download.copperspice.com/copperspice/binary/copperspice-1.4.4-ubuntu14.04-x64.tar.bz2 && \
    wget -c http://download.copperspice.com/copperspice/documentation/copperspice_api.zip && \
    wget -c http://download.copperspice.com/copperspice/documentation/copperspice_overview.zip && \
    bunzip2 copperspice-1.4.4-ubuntu14.04-x64.tar.bz2
