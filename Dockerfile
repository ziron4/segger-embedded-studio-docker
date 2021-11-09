FROM ubuntu:18.04


RUN apt update && apt install -y libx11-6 libfreetype6 libxrender1 libfontconfig1 libxext6 curl unzip git zip

ENV INSTALL="/tmp/install"

RUN mkdir -p ${INSTALL} && \
	cd ${INSTALL} && \
	curl -L https://www.segger.com/downloads/embedded-studio/EmbeddedStudio_ARM_Linux_x64 -o ses.tar.gz && \
	tar xf ses.tar.gz && \
	echo "yes" | $(find arm_segger_* -name "install_segger*") --copy-files-to /ses && \
	cd .. && \
	rm -rf ${INSTALL}

ENV INSTALL=

CMD ["/ses/bin/emBuild"]
