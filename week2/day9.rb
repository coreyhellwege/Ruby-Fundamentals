class Car
    
    attr_reader :brand
    @@cars = 0
    def self.number_of_cars
        puts @@cars
    end
    
    def initialize(brand)
        @brand = brand
        @@cars += 1 
    end

    def print_brand
        puts "The car brand is: #{@brand}"
    end

end

cars = [
    Car.new('BMW'),
    Car.new('FORD'),
    Car.new('TESLA'),
    Car.new('LAMBORGHINI')
]

american_cars = [
    Car.new('FORD'),
    Car.new('DODGE'),
    Car.new('TESLA'),
    Car.new('CHRYSLER')
]
def print_car_brands(cars)
    puts "-" * 50
    cars.each do |car|
        car.print_brand
    end
end

print_car_brands(cars)
print_car_brands(american_cars)

Car.number_of_cars

bmw = Car.new('BMW')
bmw.number_of_cars









class Account

    attr_accessor :balance
    attr_reader :name
    @@accounts = []

    def initialize(name, balance = 0)
        @name = name
        @balance = balance
    end

    def self.create_new_account(name, balance = 0)

        existing_account = false
        @@accounts.each do |account|
            if account.name == name
                existing_account = true
            end
        end

        
        unless existing_account
            @@accounts.push(Account.new(name, balance)) 
            puts "created new account for #{name}"
        else
            puts "you have already created an account for #{name}"
        end

    end

    def self.remove_account(name)

        @@accounts.each_with_index do |account, index|
            if account.name == name && account.balance == 0
                puts "Deleted account: #{account.name}"
                @@accounts.delete_at(index)
            end
        end
        # @@accounts.each_with_index do |account, index|
        #     if account.name == name && account.balance == 0
        #         puts "Account for #{account.name} withdrawn" 
        #         @@accounts.delete_at(index)
        #     end
        # end
    end

    def self.print_number_of_accounts
        puts @@accounts.count
    end
end



Account.create_new_account('ruegen', 500_000_000_000)
Account.create_new_account('Eathan')
Account.remove_account('Eathan')
Account.print_number_of_accounts

Account.create_new_account('Eathan', 500_000)