require 'date'
times = []
new_arr = []
more_arr = []
arrivals = ["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"]
arrivals.each {|tme| times << DateTime.parse(tme).strftime("%H:%M")}
times.each {|tme| new_arr << tme.split(':')}
#new_arr.each {|i| puts i.inspect}
new_arr.each {|i| i.each 
	i[0].collect {|a| more_arr << a.to_i * 60}}
p new_arr
#times.average

#difference between all times is the same (5 min); get median of sort

def shut_up(allan)
	allan.shuts_up
end