FROM ubuntu:bionic
MAINTAINER Benjamin Viart and Claudio lorenzi
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    less \
    locales \
    wget \
	make build-essential gcc gawk \
    ca-certificates \
    python3-pip \
    python3 \
    r-base r-base-core \
	pymol \
  && rm -rf /var/lib/apt/lists/* && \
 pip3 install pdb-tools numpy==1.18.5 scipy==0.19.1 scikit-learn==0.20.1 pandas==0.22.0
## Includes a change of the makefile required for the installation ( https://sourceforge.net/p/fpocket/mailman/message/28785185/ )
RUN wget https://netix.dl.sourceforge.net/project/fpocket/fpocket2.tar.gz && \
	tar -xzf fpocket2.tar.gz && \
	cd ./fpocket2/ && \
	awk '{ gsub(/\$\(LINKER\) \$\(LFLAGS\) \$\^ \-o \$@/, "$(LINKER) $^ -o $@ $(LFLAGS)"); print }' ./makefile > ./makefile.tmp && \
	cat  ./makefile.tmp && \
	mv ./makefile.tmp ./makefile && \
	make && \
	make test && \
	make install 
RUN mkdir /stride  && cd /stride && wget http://webclu.bio.wzw.tum.de/stride/stride.tar.gz && \
	 tar -zxf stride.tar.gz && make && mv ./stride /usr/bin/

COPY ./src /PickPocket/src
COPY ./data /PickPocket/data

RUN ln -s /PickPocket/src/pickPocket.sh /usr/bin/pickPocket && \
	ln -s /PickPocket/src/neuralNetwork.sh /usr/bin/neuralNetwork
 

WORKDIR /PickPocket

ENTRYPOINT ["pickPocket"]
