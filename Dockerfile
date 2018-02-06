FROM debian:8 
RUN  echo "deb [arch=amd64] http://repo.powerdns.com/debian jessie-metronome-master main  " > /etc/apt/sources.list.d/pdns.list && \
	echo "Package: * " >> /etc/apt/preferences.d/metronome  && \
	echo "Pin: origin repo.powerdns.com" >> /etc/apt/preferences.d/metronome  && \
	echo "Pin-Priority: 600" >>  /etc/apt/preferences.d/metronome  && \
	apt-get update && apt-get -y install  curl &&\
	curl https://repo.powerdns.com/CBC8B383-pub.asc | apt-key add - && \
	apt-get update && \
	apt-get -y install metronome && \ 	
	dpkg -l metronome && \
	apt-get clean

CMD ["/usr/bin/metronome","--stats-directory=/usr/share/metronome/stats","--daemon=0"]
#CMD ["/bin/bash"]
EXPOSE  8000 2003 
VOLUME ["/usr/share/metronome/stats"]



