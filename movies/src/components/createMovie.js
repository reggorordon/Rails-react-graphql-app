import React, { Component } from "react";
import { Mutation } from "react-apollo";
import gql from "graphql-tag";

const MOVIE_MUTATION = gql`
  mutation MovieMutation($title: String!, $description: String!) {
    createMovie(title: $title, description: $description) {
      __typename
    }
  }
`;

class CreateMovie extends Component {
  state = {
    title: "",
    description: ""
  };
  render() {
    const { title, description } = this.state;
    return (
      <div>
        <h1> Create A Movie</h1>
        <div className="flex flex-column mt3">
          <input
            className="mb2"
            value={title}
            onChange={e => this.setState({ title: e.target.value })}
            type="text"
            placeholder="title of movie"
          />
          <input
            className="mb2"
            value={description}
            onChange={e => this.setState({ description: e.target.value })}
            type="text"
            placeholder="Description of movie"
          />
        </div>
        <Mutation mutation={MOVIE_MUTATION} variables={{ title, description }}>
          {movieMutation => <button onClick={movieMutation}>Submit</button>}
        </Mutation>
      </div>
    );
  }
}

export default CreateMovie;
