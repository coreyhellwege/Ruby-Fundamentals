class Hamburger

    # attr_reader(:patty, :bun, :condiments, :cheese, :price) # get
    # attr_writer(:patty, :bun, :condiments, :cheese) # set

    attr_reader(:price) # attribute reader = to read the instance variables only 
    attr_accessor(:patty, :cheese, :bun, :condiments) # accessor = read and write

    def initialize(patty, bun, condiments, cheese)
        @patty = patty #string
        @bun = bun #string
        @condiments = condiments #array of strings
        @cheese = cheese #bool
        @price = 450 #int
    end

        # def get_patty
        #     return @patty
        # end

        # def set_patty(patty)
        #     return @patty = patty
        # end    

        # def get_bun
        #     return @bun
        # end

        # def set_bun(bun)
        #     return @bun = bun
        # end

        # def get_condiments
        #     return @condiments
        # end

        # def set_condiments(condiments)
        #     return @condiments = condiments
        # end

        # def get_cheese
        #     return @cheese
        # end

        # def set_cheese(bool)
        #     return @cheese = bool
        # end

        # def add_condiments(condiments)
        #     return @condiments.push condiments
        # end
end

hamburger1 = Hamburger.new('beef', 'brioche', ['tomato sauce', 'mayo'], true)
hamburger2 = Hamburger.new('chicken', 'sesame', ['relish', 'bacon'], false)
hamburger3 = Hamburger.new('vege', 'panini', ['mayo','pickles'], true)

# puts hamburger1.get_cheese
# puts hamburger2.set_cheese(false)
# puts hamburger1.get_condiments
# puts hamburger3.set_condiments(['bacon'])
# puts hamburger2.add_condiments(['lettuce', 'egg'])

puts hamburger1.cheese
puts hamburger2.bun
puts hamburger3.condiments.push('egg')


# hamburger1 is a 'class instance' or an 'object'
# condiments is an 'instance variable' or a variable of the class instance
# .cheese is an 'accessor' or a 'getter' and/or 'setter'

hamburger1.condiments.push('mustard')
puts hamburger1.condiments

