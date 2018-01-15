FROM acuilch/rockyter:next

USER root

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
    sqlite3 \
		;

USER $NB_USER
