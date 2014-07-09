namespace :db do

  desc 'create database'
  task :create_database do
    require 'mysql2'

    @db_host = "localhost"
    @db_user = "root"
    @db_name = "mbp"

    client = Mysql2::Client.new(:host => @db_host, :username => @db_user)
    client.query("DROP DATABASE IF EXISTS #{@db_name}")
    client.query("CREATE DATABASE #{@db_name}")
    client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :database => @db_name)
    data_init client
    populate_data client
    client.close
  end

  def data_init client
    client.query("CREATE TABLE person
    (
      id SERIAL PRIMARY KEY,
      name CHARACTER VARYING(64),
      occupation CHARACTER VARYING(64)
    )")
  end

  def populate_data client
    client.query("INSERT INTO person (name, occupation) VALUES ('jiaji', 'dev')")
    client.query("INSERT INTO person (name, occupation) VALUES ('yaowei', 'dev')")
  end


end

