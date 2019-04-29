import React, { Component } from "react";
import { Query } from "react-apollo";
import gql from "graphql-tag";

//grab query from server
const MOVIES_QUERY = gql`
  {
    movies {
      id
      description
      title
      reviews {
        content
      }
    }
  }
`;

class MovieList extends Component {
  render() {
    return (
      <Query query={MOVIES_QUERY}>
        {({ loading, error, data }) => {
          if (loading) return <div>Fetching</div>;
          if (error) return <div>Nope!</div>;
          return <div>
              <h1> A list of Movies</h1>
              <div className="col-sm-12">
                {data.movies.map(
                  ({ id, title, description, reviews }) => (
                    <div key={id}>
                      <div className="pa3 bg-black-05 ma3">
                        <div className="book">
                          <h3 align="center">{id}</h3>
                          <h3 align="center">{title}</h3>
                          <h3 align="center">{description}</h3>
                        </div>
                      </div>
                    </div>
                  )
                )}
              </div>
            </div>;
        }}
      </Query>
    );
  }
}

export default MovieList;
