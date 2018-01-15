FROM aculich/rockyter:next

USER root

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
    sqlite3 \
		;

USER $NB_USER

RUN Rscript -e "install.packages('RSQLite', dependencies = TRUE, repos='http://cran.us.r-project.org')"
