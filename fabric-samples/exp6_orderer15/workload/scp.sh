#--------------------------------------------------------------------------------------------------
# Copy workload file
#--------------------------------------------------------------------------------------------------
# The workload file
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@client1.peer:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@client2.peer:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@client3.peer:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@client4.peer:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@client5.peer:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@client6.peer:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@client7.peer:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer2.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer3.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer4.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer5.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer6.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer7.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer8.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer9.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer10.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer11.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer12.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer13.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer14.example.com:$HOME/fabric-samples/demo-first/workload
scp -r `ls $HOME/fabric-samples/demo-first/workload | grep -v node_modules | xargs` $USER@orderer15.example.com:$HOME/fabric-samples/demo-first/workload
