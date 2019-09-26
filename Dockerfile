FROM centos/systemd

MAINTAINER "Vladimir Drizheruk" <vladimir@drizheruk.com.ua>

RUN yum -y install httpd; yum clean all; systemctl enable httpd.service

EXPOSE 80

CMD ["/usr/sbin/init"]

