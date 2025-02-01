# FROM quay.io/plotly/miniconda
FROM continuumio/miniconda3
RUN wget -O https://github.com/tus/tusd/releases/download/v2.6.0/tusd_linux_amd64.tar.gz
RUN ls -al
# RUN mikdir /tus && tar -xzfv tusd_linux_amd64.tar.gz -C /tus
# RUN ls -al /tus
CMD python --version