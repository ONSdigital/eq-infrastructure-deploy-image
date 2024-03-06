FROM gcr.io/google.com/cloudsdktool/cloud-sdk:slim

RUN apt-get update && \
	apt-get -y install unzip kubectl \
	&& \
	git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
	ln -s /root/.tfenv/bin/* /usr/local/bin \
	&& \
	tfenv install 1.3.7 && tfenv install 1.7.3

ENV TFENV_AUTO_INSTALL=false
ENTRYPOINT ["/bin/bash"]