require 'date'
require 'time'
times = []
new_arr = []
more_arr = []
arrivals = ["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"]
#arrivals.each {|tme| times << DateTime.parse(tme).strftime("%H:%M")}
arrivals.each {|tme| new_arr << tme.split(':')}
#new_arr.each {|i| puts i.inspect}
new_arr.each {|i| i.each 
	i[0].each {|hr| more_arr << (hr.to_i * 60 * 60) + (i[1].to_i * 60)}}
sum_hrs = more_arr.inject{|sum,x| sum.to_f + x }
length = arrivals.length
average = ((sum_hrs/60)/60)/5
p average.sub('.', ',')
p Time.at(average.to_f).gmtime.strftime('%R:%S')

#difference between all times is the same (5 min); get median of sort
#sum + minutes / 60 /60 /5