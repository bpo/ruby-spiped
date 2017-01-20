# ruby-spiped

A gem for managing spiped processes from Ruby, making it easy to run an spiped
daemon on PaaS systems like Heroku without needing a custom buildpack or access
to install non-Ruby software.

This gem actually installs spiped via the rubygems C extension mechanism; its
source contains a snapshot of the spiped tarball released by Colin Percival.

## Historical note

This is a proof of concept for an spiped wrapper to Redis on Heroku from
September 2014. This is not productionized and is not maintained. See also the
[Heroku buildpack for Redis](https://github.com/heroku/heroku-buildpack-redis).

## Usage

Spawn the encrypting thread with the pipe's authentication credentials.

    require 'spiped'
    Spiped.spawn_encryptor '/tmp/redis.sock',
                           'flying-aspen-6577.redisgreen.net:11043',
                           's84YhKV6s8D2/3Mg1ddYrYutUQJIB1N4G74p83iAeBI='

Use a Redis client pointing to the local socket with the remote (Redis)
password.

    require 'redis'
    redis = Redis.new( path: '/tmp/redis.sock',
                       password: "5903b5485bc2412fba076fa492f603ce" )


