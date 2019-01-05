class Store

    attr_accessor :name, :address, :movies

    def initialize(name, address)
        @name = name
        @address = address 
        @movies = []
    end

    def add_movie(movie)
        @movies << movie
    end

end

class Movie

    attr_accessor = :genre, :title, :actors

    def initialize(genre, title)
        @genre = genre
        @title = title
        @actors = []
    end

    def add_actor(actor)
        @actors << actor
    end
end

vid_ezy = Store.new("Video Easy", "123, Fake Street")
blockbuster = Store.new("Block Buster", "321 Other Street")

forrest_gump = Movie.new("Drama", "Forrest Gump")
mean_girls = Movie.new("Comedy", "Mean Girls")

mean_girls.add_actor("Lindsay Lohan")

vid_ezy.add_movie(mean_girls)
vid_ezy.add_movie(forrest_gump)

p mean_girls

p vid_ezy.movies.count