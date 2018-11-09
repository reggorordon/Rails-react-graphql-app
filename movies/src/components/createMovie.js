import React, { Component } from 'react'
import { Mutation } from "react-apollo";
import gql from "graphql-tag";
import {Page,AppProvider,Button} from '@shopify/polaris';

class CreateMovie extends Component {
    state = {
        title: '',
        description: '',
    }

    render() {
        const MOVIE_MUTATION = gql`
          mutation MovieMutation($title: String!, $description: String!) {
            createMovie(title:$title, description:$description) {
            __typename
            }
          }
        `;
        const { title, description } = this.state
        return (
            <AppProvider>
                <Page>
            <div>
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

                <Mutation mutation={MOVIE_MUTATION} variables={{ title,description }}>
                    {movieMutation => <Button onClick={movieMutation}>Submit</Button>}
                </Mutation>
            </div>
                </Page>
                </AppProvider>
        )
    }
}

export default CreateMovie