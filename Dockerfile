FROM carloferrigno/pythonlatex:latest

ARG NB_USER=jovyan

# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
