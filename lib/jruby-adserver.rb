require 'java'
require 'sequel'
require "cuba"
require "rack/protection"
require "json"

require_relative 'vendor/scala-library-2.10.4.jar'
require_relative 'vendor/jopt-simple-3.2.jar'
require_relative 'vendor/log4j-1.2.16.jar'
require_relative 'vendor/kafka_2.10-0.8.2.0-cp.jar'
require_relative 'vendor/jopt-simple-3.2.jar'
require_relative 'vendor/kafka.jar'
require_relative 'vendor/kafka-clients-0.8.2.0-cp.jar'
require_relative 'vendor/metrics-core-2.2.0.jar'
require_relative 'vendor/lz4-1.2.0.jar'
require_relative 'vendor/snappy-java-1.1.1.6.jar'
require_relative 'vendor/zkclient-0.3.jar'
require_relative 'vendor/zookeeper-3.4.6.jar'
require_relative 'vendor/mysql-connector-java-5.1.36-bin.jar'

# Torquebox uses its own logger
unless ENV['SERVER_ENV'] == 'production'
  require_relative 'vendor/slf4j-api-1.7.6.jar'
  require_relative 'vendor/slf4j-log4j12-1.6.1.jar'
end

require_relative 'kafka-producer/producer'
require_relative 'database/offers'

