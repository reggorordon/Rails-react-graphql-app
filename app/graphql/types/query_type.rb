module Types
  class QueryType < Types::BaseObject


    
    field :movies, [Types::MovieType], null:true do 
    description "all the movies "
    end
    def movies
      Movie.all
    end

    field :total_movies, Integer, null:false do
    description "count the movies"
    end
    def total_movies
      Movie.count
    end

    field :review, ReviewType, null:true do
      description "a review"
      argument :id, ID, required:true 
    end 
    def review(id:)
      Review.find(id)
    end

  


    field :reviews, [Types::ReviewType], null:true do 
      description "call all the reviews"
      argument :limit, Integer, required:true
    end
    def reviews(limit:)
      Review.all.limit(limit)
    end

    field :movie, MovieType, null:true do 
       description "a movie"
      argument :id, ID, required:true
    end
    def movie(id:)
        Movie.find(id)
     end
  
    field :search_movie_by_title, [MovieType], null: false do
      description "Search by Title "
      argument :title, String, required: false
    end
    def search_movie_by_title(title: nil)
      if title
        Movie.where(title: title)
      else
        Movie.all.limit(10)
      end
    end

    field :books, [Types::BookType], null:true do 
      description "all the books "
    end
    def books
      Book.all
    end

  end
end
