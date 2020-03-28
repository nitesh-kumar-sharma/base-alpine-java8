FROM nikush001/base-alpine-linux:1.0
LABEL MAINTAINER="Nitesh K. Sharma <sharma.nitesh590@gmail.com>"

#******************** Install packages ***************************	
RUN apk add --no-cache --update bash openjdk8-jre
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
	PATH=$PATH:${JAVA_HOME}/bin

RUN rm -rf /tmp/* \
		${HADOOP_HOME}/share/doc/ \
		${HADOOP_HOME}/src/ \
		${JAVA_HOME}/*src.zip \
		${JAVA_HOME}/lib/missioncontrol \
		${JAVA_HOME}/lib/visualvm \
		${JAVA_HOME}/lib/*javafx* \
		${JAVA_HOME}/jre/plugin \
		${JAVA_HOME}/jre/bin/javaws \
		${JAVA_HOME}/jre/bin/jjs \
		${JAVA_HOME}/jre/bin/orbd \
		${JAVA_HOME}/jre/bin/pack200 \
		${JAVA_HOME}/jre/bin/policytool \
		${JAVA_HOME}/jre/bin/rmid \
		${JAVA_HOME}/jre/bin/rmiregistry \
		${JAVA_HOME}/jre/bin/servertool \
		${JAVA_HOME}/jre/bin/tnameserv \
		${JAVA_HOME}/jre/bin/unpack200 \
		${JAVA_HOME}/jre/lib/javaws.jar \
		${JAVA_HOME}/jre/lib/deploy* \
		${JAVA_HOME}/jre/lib/desktop \
		${JAVA_HOME}/jre/lib/*javafx* \
		${JAVA_HOME}/jre/lib/*jfx* \
		${JAVA_HOME}/jre/lib/amd64/libdecora_sse.so \
		${JAVA_HOME}/jre/lib/amd64/libprism_*.so \
		${JAVA_HOME}/jre/lib/amd64/libfxplugins.so \
		${JAVA_HOME}/jre/lib/amd64/libglass.so \
		${JAVA_HOME}/jre/lib/amd64/libgstreamer-lite.so \
		${JAVA_HOME}/jre/lib/amd64/libjavafx*.so \
		${JAVA_HOME}/jre/lib/amd64/libjfx*.so \
		${JAVA_HOME}/jre/lib/ext/jfxrt.jar \
		${JAVA_HOME}/jre/lib/ext/nashorn.jar \
		${JAVA_HOME}/jre/lib/oblique-fonts \
		${JAVA_HOME}/jre/lib/plugin.jar \
		/tmp/* /var/cache/apk/*
ENTRYPOINT ["java","-version"]