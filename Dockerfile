FROM centos:7
MAINTAINER <ssab 1260825783@qq.com>
LABEL Description="禅道开源版"
USER root

#RUN uname -m 

ADD ZenTaoPMS.9.4.zbox_64.tar.gz /opt/
RUN ls /opt/zbox

RUN chmod u+x /opt/zbox
EXPOSE 80
CMD ["/opt/zbox/zbox","start"]