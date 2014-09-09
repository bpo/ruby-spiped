# ruby-spiped

A gem for managing spiped processes from Ruby, making it easy to run an spiped
daemon on PaaS systems like Heroku without needing a custom buildpack or access
to install non-Ruby software.

This gem actually installs spiped via the rubygems C extension mechanism; its
source contains a snapshot of the spiped tarball released by Colin Percival.


## Usage

(This is a live RedisGreen spiped server - you can really use the credentials
 below, for now):

    require 'spiped'
    Spiped.spawn_encryptor '/tmp/redis.sock',
                           'flying-aspen-6577.redisgreen.net:11043',
                           's84YhKV6s8D2/3Mg1ddYrYutUQJIB1N4G74p83iAeBI='

    require 'redis'
    redis = Redis.new( path: '/tmp/redis.sock',
                       password: "5903b5485bc2412fba076fa492f603ce" )


