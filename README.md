# docker-data

Clone and build the container:
```
git clone https://github.com/h0tbird/docker-data.git
cd docker-data
./bin/build
```

Install and run the container:
```
sudo ln data.service /etc/systemd/system/data.service
sudo systemctl daemon-reload
sudo systemctl start data
```

Tail the output:
```
journalctl -f -u data
```
