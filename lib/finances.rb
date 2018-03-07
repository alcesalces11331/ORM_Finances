class Finance

	attr_accessor 

	def initialize
	end

	def self.create_table
		sql = <<-SQL
			CREATE TABLE IF NOT EXISTS month (
				id INTEGER PRIMARY KEY,
				day INTEGER
				)
				SQL
		DB[:conn].execute(sql)
	end

end