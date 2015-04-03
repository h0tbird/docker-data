#------------------------------------------------------------------------------
# Set the base image for subsequent instructions:
#------------------------------------------------------------------------------

FROM centos:7
MAINTAINER Marc Villacorta Morera <marc.villacorta@gmail.com>

#------------------------------------------------------------------------------
# Install:
#------------------------------------------------------------------------------

RUN rpm --import http://mirror.centos.org/centos/7/os/x86_64/RPM-GPG-KEY-CentOS-7
RUN rpm --import http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs
RUN rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7
RUN yum update -y && yum clean all
RUN yum install -y epel-release \
    http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm && \
    yum clean all
RUN yum install -y httpd wget rsync yum-utils createrepo repoview && \
    yum clean all
RUN rm -f /etc/httpd/conf.d/welcome.conf
ADD rootfs /

#------------------------------------------------------------------------------
# Entrypoint:
#------------------------------------------------------------------------------

ENTRYPOINT ["/init", "/usr/sbin/httpd", "-DFOREGROUND"]
