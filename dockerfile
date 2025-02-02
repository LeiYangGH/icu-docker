# FROM quay.io/plotly/miniconda
FROM continuumio/miniconda3
RUN wget -O /tusd_linux_amd64.tar.gz https://github.com/tus/tusd/releases/download/v2.6.0/tusd_linux_amd64.tar.gz
RUN ls -al
RUN mkdir /tus && tar -xvf /tusd_linux_amd64.tar.gz -C /tus
RUN ls /tus/tusd_linux_amd64 -al && mv /tus/tusd_linux_amd64/tusd /tus/tusd
RUN chmod +x /tus/tusd
ADD entry.sh /
CMD /entry.sh