FROM	nexus.asta.ir:4000/maven:3.6.1-jdk-8
COPY	./install.sh /install.sh
RUN	/install.sh
