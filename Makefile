
IMAGE?=carloferrigno/pythonlatex:latest

DUSER := $(shell id -u)

notebook: pull
	docker run -v $(PWD):/home/jovyan -it --entrypoint='' -p 8889:8889 --user $(DUSER)  $(IMAGE) bash -c "jupyter notebook --ip 0.0.0.0 --no-browser --port=8889 --NotebookApp.token='easy'"

pull:
	docker pull $(IMAGE)


