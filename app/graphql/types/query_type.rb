module Types
  class QueryType < Types::BaseObject
    
    field :movies, [Types::MovieType], null:true do 
      description "all the movies "
    end
    def movies
      Movie.all
    end

    field :total_movies, Integer, null: false
    def total_movies
      Movie.count
    end
    
    field :movie, MovieType, null:true do 
       description "a movie"
      argument :id, ID, required:true
    end
    def movie(id:)
        Movie.find(id)
     end
  
    field :search_movie_by_title, [MovieType], null: false do
      argument :title, String, required: false
    end
    def search_movie_by_title(title: nil)
      if title
        Movie.where(title: title)
      else
        Movie.all.limit(10)
      end
    end

    
  end
end
