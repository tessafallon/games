require 'date'
new_arr = []
times = []
arrivals = ["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"]
arrivals.each {|tme| new_arr << DateTime.parse(tme).strftime("%H:%M")}
new_arr.each {|tme| times << tme.slice!(0..4).split(':')}
p times.collect! {|a, b| b.to_i}
p times. #add all together, avg 