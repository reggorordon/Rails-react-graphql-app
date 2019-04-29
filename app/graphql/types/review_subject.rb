module Types::ReviewSubjectType 
 include Types::BaseUnion
  description "Objects which may be reviewed"
  possible_types Types::MovieType
end
