FROM ubuntu:bionic
MAINTAINER Benjamin Viart and Claudio lorenzi

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    less \
    locales \
    wget \
    ca-certificates \
    python3-pip \
    python3 \
    python3-pandas \
    python3-sklearn \
    python3-numpy \
    r-base r-base-core \
  && rm -rf /var/lib/apt/lists/*
RUN pip3 install pdb-tools
RUN apt-get update \
  && apt-get install -y  \
	make build-essential gcc gawk \
	&& rm -rf /var/lib/apt/lists/*
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
RUN ln -s /usr/bin/python3 /usr/bin/python

COPY ./src /PickPocket/src
COPY ./data /PickPocket/data

RUN ln -s /PickPocket/src/pickPocket.sh /usr/bin/pickPocket
RUN ln -s /PickPocket/src/neuralNetwork.sh /usr/bin/neuralNetwork
  
WORKDIR /PickPocket
