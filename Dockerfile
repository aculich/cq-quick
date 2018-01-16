FROM aculich/rockyter:next

USER root

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
    sqlite3 \
		;

USER $NB_USER

RUN conda install -y r-rsqlite=2.0 r-dbplyr
COPY *.ipynb /home/jovyan/
#COPY /srv/app/src/. /home/jovyan
