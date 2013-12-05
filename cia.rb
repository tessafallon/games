require 'nokogiri'
require 'awesome_print'

 class Scraper
 	attr_reader :xml

 	def initialize(file)
		f = File.open(file)
		@xml = Nokogiri::XML(f)
	end

def population_high
		test = @xml.xpath('//country/@population').collect {|population| population.text.to_i}
		largest = test.sort.pop
		p "The world's largest country population in 1996 was #{largest}." #if country pop = largest, return country name
		#result = @xml.xpath('//country[@population="1210004956"]')
		#p result
	end

def inflation_top5
	p xml.search('//country').map{ |a| [a['name'], a['population']] }[0, 5]
end

def highest_population
	 test = @xml.xpath('//country/@population').each {|value| value}
	 p test.sort
	end
end

cia_scraper = Scraper.new("cia-1996.xml")

 cia_scraper.inflation_top5