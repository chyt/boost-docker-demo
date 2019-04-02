FROM ibmjava:8-sdk

RUN apt-get update
RUN apt-get -y install vim
RUN apt-get -y install curl
RUN apt-get -y install zip
RUN apt-get -y install git
RUN apt-get -y install maven

ONBUILD RUN git clone https://github.com/openliberty/boost.git
ONBUILD WORKDIR "/boost"
ONBUILD RUN git checkout tomee

ONBUILD WORKDIR "/boost/boost-common"
ONBUILD RUN mvn install

ONBUILD WORKDIR "/boost/boost-maven"
ONBUILD RUN mvn install

ONBUILD WORKDIR "/"
