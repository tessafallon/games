class BusinessHours
attr_accessor :hours, :closed
@@days = []

def initialize(open, close, *days)
	@hours = open, close
	@closed = []
	@@days << Date::ABBR_DAYNAMES
end

def update (day, open, close)
	@hours = [open, close]
end

def days
	@@days
end

def self.all
end	

def calculate_deadline
end

end

hours = BusinessHours.new("12:00 p.m.", "3:00 p.m.", Date::ABBR_DAYNAMES)
puts 
hours2 = BusinessHours.new("9:00 a.m.", "5:00 p.m.")
hours.closed = "sun", "sat", "9 a.m."
puts hours.closed

# hours.update("fri", "9:00 a.m.", "5:00 p.m")
# puts hours.day("tues")
# puts hours2.day("thurs")



# Hours is an instance of class BusinessHours initialized with parameters (open, close)
# Hours has the attribute days
# Hours can be updated with parametrs (day, open, close)
# Hours has the attribute closed
#different days can have different hours