FROM ubuntu-upstart:trusty

ENV DEBIAN_FRONTEND noninteractive

EXPOSE 80 3306

RUN apt-get update && \
	apt-get install -y wget && \
	wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb && \
	dpkg -i puppetlabs-release-trusty.deb && \
	apt-get update && \
	apt-get install -y nano puppet
ADD puppet /etc/puppet

RUN ln -sf /bin/true /sbin/initctl

WORKDIR /etc/puppet
# Remove the deprecated templatedir line from the Puppet config file
RUN sed -i '/templatedir/d' ./puppet.conf
RUN puppet apply manifests/site.pp

CMD /bin/bash