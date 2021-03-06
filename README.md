Metronome Docker
================

This project is a Docker container for PowerDNS Metronome. 

[![](https://images.microbadger.com/badges/image/criticalcase/metronome.svg)](https://microbadger.com/images/criticalcase/metronome "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/criticalcase/metronome.svg)](https://microbadger.com/images/criticalcase/metronome "Get your own version badge on microbadger.com")

Base [docker image](http://www.docker.io) to run a [Metronome](https://github.com/ahupowerdns/metronome) server

Getting the container
---------------------

The container is very small and available on the Docker Index:

    docker pull criticalcase/metronome

Using the container
-------------------

Just trying out Metronome.

If you just want to run a single instance of Metronome server to try out its functionality:

    docker run -d criticalcase/metronome

Build the container
-------------------

To create the image `criticalcase/metronome`, execute the following command on the maxscale-docker folder:

    docker build -t criticalcase/metronome .

UI using docker compose
-----------------------

UI is provided by nginx server using metronome html/js/css static files:

    docker-compose up

Contribute
----------

Contributions are welcome.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

License
-------

Copyright 2018 CriticalCase Srl
Licensed under the MIT License
