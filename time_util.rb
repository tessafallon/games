require 'date'
require 'time'
new_arr = []
times = []
more_arr = []
arrivals = ["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"]
#arrivals.each {|tme| new_arr << DateTime.parse(tme).strftime("%H:%M")}
arrivals.each {|tme| times << tme.slice!(0..4).split(':')}
times.each {|a, b| more_arr << (a.to_i * 60) + (b.to_i)}
sum_hrs = more_arr.inject{|sum,x| sum.to_f + x }
sum_hrs
average = ((sum_hrs/60/60/5)).round(2)
final = average.to_s.gsub!('.', ':')
p Time.parse(final)