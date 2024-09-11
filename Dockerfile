FROM busybox
MAINTAINER Anastas Dancha <anapsix@random.io>
COPY --link doa.sh /doa.sh
CMD /doa.sh
