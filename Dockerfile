FROM alpine:3.9

#******************** Install packages ***************************	
RUN apk --no-cache \
		--update add \
		  bash \
		  curl \
		  openssh \
		  wget \
		  openjdk8-jre \
		  sudo \
		  procps \
		  rsync
		  
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
	PATH=$PATH:${JAVA_HOME}/bin

ADD entrypoint.sh /etc/entrypoint.sh
RUN chmod a+x /etc`/entrypoint.sh

ENTRYPOINT ["/etc/bootstrap.sh"]