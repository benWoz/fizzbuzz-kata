def fizzbuzz (call)
  return "fizz" if fizzable?(call)
  return "buzz" if buzzable?(call)
  call
end

def fizzable?(call)
  call.to_i % 3 == 0
end

def buzzable?(call)
  call.to_i % 5 == 0
end

When /^I'm given "([^"]*)" I'll respond with "([^"]*)"$/ do |call, response|
  fizzbuzz(call).to_s.should == response
end

When /^I'm given "([^"]*)" I'll respond with fizz$/ do |call|
  fizzbuzz(call).should == "fizz"
end

When /^I'm given "([^"]*)" I'll respond with buzz$/ do |call|
  #puts "@call is #{@call} and @response is #{@response}"
  fizzbuzz(call).should == "buzz"
end

