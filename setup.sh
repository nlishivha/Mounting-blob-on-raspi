#!/bin/bash

######### UPDATE THE SYSTEM ##########
sudo apt update
sudo apt upgrade -y

############ INSTALL GOLANG VERSION 1.20 ############
# 1. Download Go
wget https://go.dev/dl/go1.20.linux-arm64.tar.gz

# 2. Extract to /usr/local
sudo tar -C /usr/local -xzf go1.20.linux-arm64.tar.gz

# 3. Add Go to the PATH
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile

# 4. Reload the Profile
source ~/.profile

# 5. Confirm the Go Version
go version

########### INSTALL BLOBFUSE ###########
# 1. Clone the Blobfuse Repository
git clone https://github.com/Azure/azure-storage-fuse.git

# 2. Change to the Repository Directory
cd azure-storage-fuse

# 3. Build the Blobfuse Binary
go build -o blobfuse2

# 4. Verify the Blobfuse Binary
ls -l blobfuse2

# 5. Make the Blobfuse Binary Executable
chmod +x blobfuse2

# 6. Test Blobfuse
./blobfuse2 -h

############ ADD VARIABLES ############
export AZURE_STORAGE_ACCOUNT=sweatlabiotstorage
export AZURE_STORAGE_ACCESS_KEY=2gbPN0ACiSSMNyCnYvowK86u+OsxRlxjuE3C20psQ6pUmFjOdCVWUm9kClFlfZidAho0AU3JddiV+AStEY21sA==

############## CREATE DIRECTORIES ##############
# Create directories if they don't exist
mkdir -p ~/blob
mkdir -p /home/centralserver/blob_temp

############## MOUNT ##############
./blobfuse2 mount ~/blob --container-name=sweatlabstoragecontainer --tmp-path=/home/centralserver/blob_temp
