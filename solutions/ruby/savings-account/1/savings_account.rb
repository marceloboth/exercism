module SavingsAccount
  def self.interest_rate(balance)
    inf = Float::INFINITY
    
    case balance
    when 0...1000.0 then 0.5
    when 1000.0...5000.0 then 1.621
    when 5000.0..inf then 2.475
    else 
      3.213
    end
  end

  def self.annual_balance_update(balance)
    percentage_value = (balance * self.interest_rate(balance)) / 100
    balance + percentage_value
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    balance = current_balance
    years = 0
    while balance < desired_balance
      years += 1
      balance = self.annual_balance_update(balance)
    end

    years
  end
end
