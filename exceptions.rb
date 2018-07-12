begin
  # Any exceptions in here... 
  1/0
rescue ZeroDivisionError => e
  puts "Exception Class: #{ e.class.name }"
  puts "Exception Message: #{ e.message }"
  puts "Exception Backtrace: #{ e.backtrace }"
end


begin
  0/1
  # raises an ArgumentError with the message "you messed up!"
  raise ArgumentError.new("You messed up!")
rescue ArgumentError => e  
  puts e.message
end