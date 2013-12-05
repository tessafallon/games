require 'nokogiri'


 class Scraper
 	attr_reader :xml

 	def initialize(file)
		f = File.open(file)
		@xml = Nokogiri::XML(f)
	end
def scrape_test
		@xml.xpath("//country//ethnicgroups//@name").collect {|name| p name.text}
	end

end

cia_scraper = Scraper.new("cia-1996.xml")

p cia_scraper.scrape_test