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

