## Simple AdServer

Demonstration of JRuby and JVM technologies to develop a simple Ad Server.

The following technologies are demonstrated:

- JRuby 9000
- Torquebox (Blazing fast Ruby application platform)
- Kafka JVM libraries
- Cuba (Ruby microframework for web development)
- Sequel (using jdbc)

## Requirements

- JRuby 9.0.0.0+
- JBoss
- Kafka
- MySQL

## Setup (Max OS X)

Install JBoss:

```
brew install jboss-as
```

Add the following to you .bash_profile

```
export JBOSS_HOME=/usr/local/opt/jboss-as/libexec
export PATH=${PATH}:${JBOSS_HOME}/bin
```

## Getting Started

Create a simple MySQL database:

```
mysql> create database jruby_adserver_development;
mysql> create table offers (id int not null auto_increment, name varchar(255), reward int, url varchar(255), primary key (id));
mysql> insert into offers values (1, 'offer1', 5, 'http://www.google.com');
mysql> insert into offers values (2, 'offer2', 5, 'http://www.example.com');
mysql> insert into offers values (3, 'offer3', 10, 'http://www.somethingelse.com');
```

## Development

Start the server using:

```
rackup
```

Try to access http://localhost:9292/status

## Production

Run server with Torquebox:

```
SERVER_ENV=production rackup -s torquebox
```

## License

jruby-adserver is released under the [MIT License](http://www.opensource.org/licenses/MIT).
