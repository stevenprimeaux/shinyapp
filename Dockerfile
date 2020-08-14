FROM rocker/tidyverse

RUN mkdir /shinyapp
COPY shinyapp /shinyapp

RUN R -e "install.packages(c('shiny', 'rmarkdown'), repos = 'https://cloud.r-project.org/')"

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/shinyapp', port = 3838, host = '0.0.0.0')"]
