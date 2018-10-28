#! /bin/bash

# copy to /tmp
cp ./eng.tar /tmp/

# change directory
cd /tmp/

# decompress 1
tar -xvf ./eng.tar

cd ./eng/

# decompress 2
unzip \*.zip

# cleanup
rm *.zip
