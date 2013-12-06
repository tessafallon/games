require 'nokogiri'
require 'awesome_print'

 class Scraper
 	attr_reader :xml

 	def initialize(file)
		f = File.open(file)
		@xml = Nokogiri::XML(f)
	end


def inflation
	all_count = xml.search('//country').map{ |a| [a['name'], a['inflation'].to_i] }
	all_count.sort! {|a, b| a[1] <=> b[1]}
	p all_count[-5, 5]
end

def population
	pop_array = []
	 test = @xml.search('//country').collect {|a| [a['population'], a['name']] }
	 test.each {|a, b| pop_array << a.to_i}
	 max = pop_array.sort.last.to_s
	 test.each {|a, b| (a == max) ? (puts "In 1996, #{b} had the world's largest population at #{a} people.") : nil}
end

def continents_with_countries
	# cntnts.collect! {|name| name.to_s.gsub!((/\W/), "")}
	# h1 = Hash[*cntnts.flatten]
	# p h1.inspect
	#main_has = Hash[cntnts.{|cntnt| cntnt}]
	europe = []
	countries = @xml.search('//country').collect {|a| [a['continent'], a['name']]}
	continents = Hash.new { |hash, key| hash[key] = [] }
	countries.each {|a, b| continents[a] << b}
	p continents

end

end

cia_scraper = Scraper.new("cia-1996.xml")

 cia_scraper.continents_with_countries