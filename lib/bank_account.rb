class BankAccount
attr_reader :name
attr_accessor :balance, :status

@@all = []

  def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
    @@all << self
  end

  def self.all
    @@all
  end
    
  def deposit(money)
    self.balance += money
  end
  
  def display_balance
    "Your balance is $#{balance}."
  end
  
  def valid?
    if status == "open" && self.balance > 0
      true
    else
      false
    end
  end
  
  def close_account
    status == "closed"
  end
  
  
  
  
  
  
end
  
  


