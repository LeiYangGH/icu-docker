# FROM quay.io/plotly/miniconda
FROM continuumio/miniconda3
RUN wget -O /tusd_linux_amd64.tar.gz https://github.com/tus/tusd/releases/download/v2.6.0/tusd_linux_amd64.tar.gz
RUN ls -al
RUN mkdir /tus && tar -xfv /tusd_linux_amd64.tar.gz -C /tus
RUN ls -al /tus
CMD python --version