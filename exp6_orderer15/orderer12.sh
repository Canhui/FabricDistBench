# run orderer12
cd $HOME/fabric-samples/demo-first
export COMPOSE_PROJECT_NAME=net export SYS_CHANNEL=byfn-sys-channel export IMAGE_TAG=2.2.0
docker-compose --compatibility -f orderer12.yaml up -d
