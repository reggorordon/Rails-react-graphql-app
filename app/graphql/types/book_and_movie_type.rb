
  class Types::BookAndMovieType < BaseUnion
     description "search books and movies"
     possible_types Types::MovieTypes
  end

