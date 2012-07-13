require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

array = %w[cat car bat ball blam]
template = ERB.new "These are the values of the array <%= array %> "
puts template.result(binding)

array << "WEEMA"
template = ERB.new "I just added WEEMA to the array... SEEEEE?!?!?! :: <%= array %>"
puts template.result(binding)

hash = {first: "Thomas", last: "Little", occupation: "Captain", age: 26, bearded: true}
template = ERB.new "Check out this hash of Thomas: <%= hash %>"
puts template.result(binding)