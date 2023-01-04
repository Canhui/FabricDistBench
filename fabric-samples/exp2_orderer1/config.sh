# Project under the directory of $HOME/fabric-samples
project="demo-first"
channel="mychannel"

# Use the cryptogen to generate certificates
cd $HOME/fabric-samples/$project
../bin/cryptogen generate --config=./crypto-config.yaml

# Use configtxgen to generate the genesis block
cd $HOME/fabric-samples/demo-first
mkdir channel-artifacts
export FABRIC_CFG_PATH=$PWD
../bin/configtxgen -profile SampleMultiNodeEtcdRaft -channelID byfn-sys-channel -outputBlock ./channel-artifacts/genesis.block

# Use configtxgen to generate configuration transaction
export CHANNEL_NAME=$channel
../bin/configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID $CHANNEL_NAME

# Define anchor peers
../bin/configtxgen -profile TwoOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org1MSP
