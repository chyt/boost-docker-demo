FROM ibmjava:8-sdk

RUN apt-get update
RUN apt-get -y install vim
RUN apt-get -y install curl
RUN apt-get -y install zip
RUN apt-get -y install git
RUN apt-get -y install maven

RUN git clone https://github.com/openliberty/boost.git
WORKDIR "/boost"
RUN git checkout tomee

WORKDIR "/boost/boost-common"
RUN mvn install

WORKDIR "/boost/boost-maven"
RUN mvn install

WORKDIR "/"
