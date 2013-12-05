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
	cntnts = @xml.search('/cia/continent').collect {|a| [a['name']]}
	# cntnts.each {|name|
	# 	name.each {|nm| nm.to_sym}} #3 retain quotes b/c of spacing: fix
	main_has = Hash[cntnts.map{|name| name}]
	countries = @xml.search('//country').collect {|a| [a['name'], a['continent']]}
	p countries.each {|a, b| (b)} #put country in hash based on continent match
end

end

cia_scraper = Scraper.new("cia-1996.xml")

 cia_scraper.continents_with_countries