#--------------------------------------------------------------------------------------------------
# The first time takes a few minutes
#--------------------------------------------------------------------------------------------------
# The demo-frist folder
scp -r $HOME/fabric-samples/demo-first/ $USER@client1.peer:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@client2.peer:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@client3.peer:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@client4.peer:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@client5.peer:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@client6.peer:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@client7.peer:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@orderer.example.com:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@orderer2.example.com:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@orderer3.example.com:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@orderer4.example.com:$HOME/fabric-samples/
scp -r $HOME/fabric-samples/demo-first/ $USER@orderer5.example.com:$HOME/fabric-samples/

# The chaincode folder
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@client1.peer:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@client2.peer:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@client3.peer:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@client4.peer:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@client5.peer:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@client6.peer:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@client7.peer:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@orderer.example.com:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@orderer2.example.com:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@orderer3.example.com:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@orderer4.example.com:$HOME/fabric-samples/abstore/go
scp -r $HOME/fabric-samples/chaincode/abstore/go $USER@orderer5.example.com:$HOME/fabric-samples/abstore/go

#--------------------------------------------------------------------------------------------------
# Copy config file
#--------------------------------------------------------------------------------------------------
# The config file
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@client1.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@client2.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@client3.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@client4.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@client5.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@client6.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@client7.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@orderer.example.com:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@orderer2.example.com:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@orderer3.example.com:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@orderer4.example.com:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/channel-artifacts/ $USER@orderer5.example.com:$HOME/fabric-samples/demo-first/

scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@client1.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@client2.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@client3.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@client4.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@client5.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@client6.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@client7.peer:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@orderer.example.com:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@orderer2.example.com:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@orderer3.example.com:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@orderer4.example.com:$HOME/fabric-samples/demo-first/
scp -r $HOME/fabric-samples/demo-first/crypto-config/ $USER@orderer5.example.com:$HOME/fabric-samples/demo-first/
