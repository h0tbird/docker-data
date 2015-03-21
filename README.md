# docker-data

Clone and build:
```
git clone https://github.com/h0tbird/docker-data.git
cd docker-data
./bin/build
```

Install and run:
```
sudo ln data.service /etc/systemd/system/data.service
sudo ln bin/runctl /usr/local/sbin/runctl-data
sudo mkdir /etc/bootpaas
sudo cp data.conf /etc/bootpaas
sudo systemctl daemon-reload
sudo systemctl start data
```

Tail the output:
```
journalctl -f -u data
```

Synchronize the data:
```
docker exec -it data01 datasync
```
