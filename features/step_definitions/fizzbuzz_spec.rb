def fizzbuzz (call)
  response = ""
  response << "fizz" if fizzable?(call)
  response << "buzz" if buzzable?(call)
  response = call if response == ""
  response
end

def fizzable?(call)
  call.to_i % 3 == 0
end

def buzzable?(call)
  call.to_i % 5 == 0
end

When /^I'm given "([^"]*)" I'll respond with "([^"]*)"$/ do |call, response|
  fizzbuzz(call).should == response
end

When /^I'm given "([^"]*)" I'll respond with fizz$/ do |call|
  fizzbuzz(call).should == "fizz"
end

When /^I'm given "([^"]*)" I'll respond with buzz$/ do |call|
  fizzbuzz(call).should == "buzz"
end

When /^I'm given "([^"]*)" I'll respond with fizzbuzz$/ do |call|
  fizzbuzz(call).should == "fizzbuzz"
end

