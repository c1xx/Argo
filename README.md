# Argo bootstrap files for your masternode

Bootstrapping is the process for speeding up the syncing of your wallet. Syncing is your wallet downloading all transactions from when it was made until now. You can bootstrap your wallet to give it the file instead of it downloading slowly (syncing).

### To get bootstrap on your VPS/Masternode, follow this steps:
**Notice:** Bootstrap files will be refreshed every 3 hours.

1. Login as root and stop your masternode
   ```
   argo-cli stop
   ```
   
2. If your Argo masternode path is not **_/root/.argocore_**, change **_COIN_PATH='/root/.argocore/'_** variable to your Argo masternode file location or you'll get problems.

3. Download and start bootstrap script

```
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/c1xx/Argo/master/bootstrap.sh)"
```

4. Start your Argo masternode again
   ```
   argod -daemon
   ```
   
Now your blockchain is up to date, only a few blocks will be downloaded afterwards.
