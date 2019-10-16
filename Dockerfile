FROM  centos:7

RUN yum install --assumeyes libXp-1.0.2
RUN yum install --assumeyes libXtst-1.2.3 
RUN yum install --assumeyes libXft-2.3.2
RUN yum install --assumeyes compat-libstdc++-33-3.2.3
RUN yum install --assumeyes ncurses-libs-5.9-14.20130511.el7_4.i686
RUN yum install --assumeyes glibc-2.17
RUN yum install --assumeyes ksh-20120801

COPY ./installer /tmp/
RUN /tmp/installer -i silent -DLICENSE_ACCEPTED=true

RUN rm /tmp/installer

ENV CICSCLI /tmp/ctg.ini

CMD ["/bin/bash"]
