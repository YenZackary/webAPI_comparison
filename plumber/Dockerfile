FROM rocker/r-ver:4.2.1
WORKDIR /app
RUN R -e "install.packages('plumber')"
COPY app.R .
EXPOSE 8080
CMD ["R", "-e", "pr <- plumber::plumb('app.R'); pr$run(host = '0.0.0.0', port = 8080)"]