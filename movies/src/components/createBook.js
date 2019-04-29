import React, { Component } from "react";
import { Mutation } from "react-apollo";
import gql from "graphql-tag";

const BOOK_MUTATION = gql`
  mutation BookMutation($title: String!, $description: String!) {
    createBook(title: $title, description: $description) {
      __typename
    }
  }
`;

class CreateBook extends Component {
  state = {
    title: "",
    description: ""
  };

  render() {
    const { title, description } = this.state;
    return (
      <div>
        <h1> Create A Book</h1>
        <div className="flex flex-column mt3">
          <input
            className="mb2"
            value={title}
            onChange={e => this.setState({ title: e.target.value })}
            type="text"
            placeholder="title of book"
          />
          <input
            className="mb2"
            value={description}
            onChange={e => this.setState({ description: e.target.value })}
            type="text"
            placeholder="Description of book"
          />
        </div>
        <Mutation mutation={BOOK_MUTATION} variables={{ title, description }}>
          {bookMutation => <button onClick={bookMutation}>Submit</button>}
        </Mutation>
      </div>
    );
  }
}

export default CreateBook;
