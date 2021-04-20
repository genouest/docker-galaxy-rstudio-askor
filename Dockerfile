# RStudio container used for Galaxy RStudio Integration

FROM quay.io/erasche/docker-rstudio-notebook:19.09

ADD ./packages/bioconda.R /tmp/packages/bioconda.R
ADD ./packages/other.R /tmp/packages/other.R

RUN rm -f /usr/local/lib/R/etc/Rprofile.site && \
    Rscript /tmp/packages/other.R && \
    Rscript /tmp/packages/bioconda.R && \
    chmod 777 /import/

# Must happen later, otherwise GalaxyConnector is loaded by default, and fails,
# preventing ANY execution
COPY ./Rprofile.site /usr/local/lib/R/etc/Rprofile.site

EXPOSE 80
