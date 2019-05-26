FROM	maven:3.6.1-jdk-8
COPY	./install.sh /install.sh
RUN	chmod +x /install.sh
RUN	/install.sh
