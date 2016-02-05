# docker-data

[![Build Status](https://travis-ci.org/h0tbird/docker-data.svg?branch=master)](https://travis-ci.org/h0tbird/docker-data)
[![](https://img.shields.io/imagelayers/image-size/h0tbird/data/latest.svg)](https://imagelayers.io/?images=h0tbird/data:latest)
[![](https://img.shields.io/imagelayers/layers/h0tbird/data/latest.svg)](https://imagelayers.io/?images=h0tbird/data:latest)

This container is member of the [*booddies*](https://github.com/h0tbird/booddies) fellowship.

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
## License

Copyright 2015 Marc Villacorta Morera

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
