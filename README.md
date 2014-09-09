# ruby-spiped

A gem for managing spiped processes from Ruby, making it easy to run an spiped
daemon on PaaS systems like Heroku without needing a custom buildpack or access
to install non-Ruby software.

## Usage

    require 'spiped'
    Spiped.spawn_encryptor '/tmp/redis.sock', 'flying-aspen-6577.redisgreen.net:11043', 's84YhKV6s8D2/3Mg1ddYrYutUQJIB1N4G74p83iAeBI='

    require 'redis'
    Redis.new(path: '/tmp/redis.sock', password: "5903b5485bc2412fba076fa492f603ce" )


