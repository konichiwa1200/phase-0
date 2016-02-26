# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement
=begin
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
assign "bettysue" to name variable
call method assert
  raises ERROR unless return value == nil
=end

# 3. Copy your selected challenge here
#!/usr/bin/ruby

# Solution Below
num1 = 7
num2 = 27

# some basic math functions
sum = num1 + num2
difference = num1 - num2
# convert nums to floats 
quotient = num1.to_f / num2.to_f
product = num1 * num2
modulus = num1 % num2

# RSpec Tests. They are included in this file because the local variables you are creating are not accessible across files. If we try to run these files as a separate file per normal operation, the local variable checks will return nil.

=begin
describe 'num1' do
  it "is defined as a local variable" do
    expect(defined?(num1)).to eq 'local-variable'
  end

  it "is an integer" do
    expect(num1).to be_a Fixnum
  end
end
=end



=begin
describe 'num2' do
  it "is defined as a local variable" do
    expect(defined?(num2)).to eq 'local-variable'
  end

  it "is an integer" do
    expect(num2).to be_a Fixnum
  end
end

describe 'sum' do
  it "is defined as a local variable" do
    expect(defined?(sum)).to eq 'local-variable'
  end

  it "is assigned the value of num1 + num2" do
    expect(sum).to eq num1 + num2
  end
end

describe 'difference' do
  it "is defined as a local variable" do
    expect(defined?(difference)).to eq 'local-variable'
  end

  it "is assigned the value of num1 - num2" do
    expect(difference).to eq num1 - num2
  end
end

describe 'product' do
  it "is defined as a local variable" do
    expect(defined?(product)).to eq 'local-variable'
  end

  it "is assigned the value of num1 * num2" do
    expect(product).to eq num1 * num2
  end
end

describe 'quotient' do
  it "is defined as a local variable" do
    expect(defined?(quotient)).to eq 'local-variable'
  end

  it "is assigned the value of num1 / num2" do
    expect(quotient).to eq num1.to_f / num2.to_f
  end
end

describe 'modulus' do
  it "is defined as a local variable" do
    expect(defined?(modulus)).to eq 'local-variable'
  end

  it "is assigned the value of num1 % num2" do
    expect(modulus).to eq num1.to_f % num2.to_f
  end
end

=end

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end


test1 = 'local-variable'
assert { test1 == defined?(num1) }
assert { test1 == defined?(num2) }
assert { test1 == defined?(sum) }
assert { test1 == defined?(difference) }
assert { test1 == defined?(product) }
assert { test1 == defined?(quotient) }
assert { test1 == defined?(modulus) }


test2 = Fixnum
assert { test2 == num1.class}
assert { test2 == num2.class}


test3 =  num1 + num2
assert {test3 == sum}

test4 = num1 - num2
assert { test4 == difference }

test5 = num1 * num2
assert { test5 == product }

test6 = num1.to_f / num2.to_f
assert { test6 == quotient }

test6 = num1 % num2
assert { test6 == modulus }



# 5. Reflection
# What concepts did you review in this challenge?
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?