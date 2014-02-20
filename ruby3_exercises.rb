def provide_mortgage?(salary, deposit, property_value)
  loan_amount = property_value - deposit
  min_deposit = 0.2 # 20%
  max_multiplier = 5 # how many annual incomes can be borrowed
  deposit >= property_value * min_deposit && salary * max_multiplier >= loan_amount
end

# 1.a true
puts provide_mortgage?(30000, 50000, 200000)
# 1.b false
puts provide_mortgage?(30000, 50000, 300000)
# 1.c true
puts provide_mortgage?(50000, 40000, 200000)
# 1.d true
puts provide_mortgage?(80000, 100000, 500000)
# 1.e false
puts provide_mortgage?(35000, 60000, 300000)
# 1.f true
puts provide_mortgage?(25000, 30000, 150000)

# Ex 2
# puts''
# puts "Ex 2"


def provide_mortgage_2?(salary, deposit, property_value)
  loan_amount = property_value - deposit
  property_value >= 650000 ? min_deposit = 0.2 : min_deposit = 0.05 # 20%
  max_multiplier = 5 # how many annual incomes can be borrowed
  deposit >= property_value * min_deposit && 
  salary * max_multiplier >= loan_amount
end


# Ex 3
# puts''
# puts "Ex 3"

def provide_mortgage_3?(salary, deposit, property_value)
  loan_amount = property_value - deposit
  property_value >= 650000 ? min_deposit = 0.2 : min_deposit = 0.05 # 20%
  max_multiplier = 5 # how many annual incomes can be borrowed
  deposit >= property_value * min_deposit && 
  (salary * max_multiplier >= loan_amount || deposit >= property_value * 0.75)
end

# puts provide_mortgage_3?(1000, 160000, 200000)
 
 # Ex 4

 def provide_mortgage_4?(salary, deposit, property_value, bankrupt)
  loan_amount = property_value - deposit
  property_value >= 650000 ? min_deposit = 0.2 : min_deposit = 0.05 # 20%
  max_multiplier = 5 # how many annual incomes can be borrowed
  !bankrupt && deposit >= property_value * min_deposit && 
  (salary * max_multiplier >= loan_amount || deposit >= property_value * 0.75)
end

# shouldn't provide credit even if the scores are awesome. i.e. false
puts provide_mortgage_4?(2000000, 200000, 200000, true)