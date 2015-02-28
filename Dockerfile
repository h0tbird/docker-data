#------------------------------------------------------------------------------
# Set the base image for subsequent instructions:
#------------------------------------------------------------------------------

FROM centos:latest
MAINTAINER Marc Villacorta Morera <marc.villacorta@gmail.com>

#------------------------------------------------------------------------------
# Update the base image:
#------------------------------------------------------------------------------

RUN yum update -y

#------------------------------------------------------------------------------
# Install:
#------------------------------------------------------------------------------

RUN rpm --import http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs
RUN rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7
RUN yum install -y epel-release http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
RUN yum install -y httpd wget rsync yum-utils createrepo repoview
RUN rm -f /etc/httpd/conf.d/welcome.conf
ADD rootfs /

#------------------------------------------------------------------------------
# Set systemd as default process:
#------------------------------------------------------------------------------

ENTRYPOINT ["/usr/sbin/start"]
