# docker-data

Clone and build:
```
git clone https://github.com/h0tbird/docker-data.git
cd docker-data
./bin/build
```

Install and run:
```
sudo ./bin/install
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
