include .env

.PHONY: serve pull

serve: pull
	docker-compose up

pull: ${CHORD_PATH}
	cd ${CHORD_PATH} && git pull

${CHORD_PATH}:
	git clone ${CHORD_URL} ${CHORD_PATH{
