Given /^I enter (\d) and (\d)$/ do |a, b|
    @calc = Calculator.new
    @calc.num1 = a.to_i
    @calc.num2 = b.to_i
end

When /^I add the numbers$/ do
    @result = @calc.perform_add(2,3)
end

Then /^the added result should be (\d)$/ do |expected|
    expect(@result).to eq 5
end

When /^I subtract the numbers$/ do
    @result = @calc.perform_minus(4,3)
end

Then /^the subtracted result should be (\d)$/ do |expected|
    expect(@result).to eq 1
end

When /^I divide the numbers$/ do
    @result = @calc.perform_division(4,2)
end

Then /^the divided result should be (\d)$/ do |expected|
    expect(@result).to eq 2
end

When /^I multiply the numbers$/ do
    @result = @calc.perform_multiplication(4,4)
end

Then /^the multiplied result should be (\d+)$/ do |expected|
    expect(@result).to eq 16
end