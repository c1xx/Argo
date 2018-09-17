#!/bin/bash
COIN_CHAIN_FILE='argo-blockchain.tar.gz'
COIN_CHAIN='https://node-support.network/bootstrap/'$COIN_CHAIN_FILE
COIN_NAME='Argo'
COIN_PATH='/root/.argocore'
TMP_PATH='/root/bootstrap_temp'

mkdir $TMP_PATH
cd $TMP_PATH
echo -e "Downloading and extracting $COIN_NAME blockchain files."
wget -q $COIN_CHAIN
tar -xzvf $COIN_CHAIN_FILE -C $TMP_PATH/
rm -rf $COIN_PATH/blocks/
rm -rf $COIN_PATH/chainstate/
mv $TMP_PATH/root/Bootstrap/.argocore/blocks/ $COIN_PATH/
mv $TMP_PATH/root/Bootstrap/.argocore/chainstate/ $COIN_PATH/
cd ~
rm -r $TMP_PATH