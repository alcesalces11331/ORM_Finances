class Receipt

	attr_accessor :month, :day, :amount, :id, :place

	def initialize(month, day, place, amount, id = nil)
		@month = month
		@day = day
		@place = place
		@amount = amount
		@id = id
	end

	def self.create_table
		sql = <<-SQL
			CREATE TABLE IF NOT EXISTS Finances (
				id INTEGER PRIMARY KEY,
				month TEXT,
				day INTEGER,
				place TEXT,
				amount INTEGER
				)
				SQL
		DB[:conn].execute(sql)
	end

	def save
		sql = <<-SQL
			INSERT INTO	Finances (month, day, place, amount)
			VALUES (?, ?)
			SQL

		DB[:conn].execute(sql, self.month, self.day, self.place, self.amount)
	end

end