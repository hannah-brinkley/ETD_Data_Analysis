FROM britishlibrarylabs/humanitiesworkbench

LABEL maintainer="Robert Rielage <rrielage@vt.edu>"

USER $NB_USER

COPY load_metadata.ipynb /home/$NB_USER/

RUN jupyter trust /home/$NB_USER/load_metadata.ipynb

USER root

EXPOSE 8888
RUN fix-permissions /home/$NB_USER
	
USER $NB_USER
