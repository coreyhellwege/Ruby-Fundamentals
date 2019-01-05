class Factory

    attr_accessor :copper

    def initialize(copper = 0)
        @copper = copper
        @copper_holding_limit = 2000
    end

    # add copper to inventory

    # def add_copper(amount)
    #     copper = @copper
    #     copper += amount
    #         if copper > @copper_holding_limit
    #             puts "that exceeds the capacity"
    #         else 
    #             puts "added #{amount} to copper holding"
    #             @copper = copper
    #         end
    # end


    # def add_copper(amount)
        
    #         if @copper + amount > @copper_holding_limit
    #             puts "that exceeds the capacity"
    #         else 
    #             puts "added #{amount} to copper holding"
    #             puts "the copper total is now #{@copper + amount}"
    #         end
    # end


    # def add_copper(amount)
    #     @copper + amount > @copper_holding_limit ? (puts "Storage limit reached") : (p @copper + amount)
    # end



    

    #remove copper fromn inventory

    # def remove_copper(amount)
    #     @copper - amount < @copper ? (puts "copper total is now #{@copper - amount}") : (puts "you can't do that")
    # end


    def remove_copper(amount)
        if @copper < amount
            puts "you don't have enough inventory"
        else
            p @copper - amount
        end
    end


end

main_factory = Factory.new(1000)

# factory.add_copper(1900)

# main_factory.add_copper(250)

main_factory.remove_copper(50)



