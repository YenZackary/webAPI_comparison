FROM rocker/r-ver:4.2.1
WORKDIR /app
RUN apt-get update && apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev
RUN R -e "install.packages('RestRserve')"
COPY app.R /app/app.R
EXPOSE 8081
CMD ["R", "-e", "source('app.R')"]
