require 'sqlite3'

DB = {:conn => SQLite3::Database.new("db/finances.db")}