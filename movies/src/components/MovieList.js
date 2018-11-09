import React, { Component } from 'react'
import { Query } from "react-apollo";
import gql from "graphql-tag";
import { Page, AppProvider } from '@shopify/polaris';
class MovieList extends Component {
    constructor(props) {
        super(props);
        this.state = {
            movies: {
                id: '',
                title: '',
                description:''
            }
        }
    }
    
    render() {
        const MOVIES_QUERY = gql`
          {
            movies {
              id
              title
              description
              reviews {
                edges {
                  node {
                    content
                  }
                }
              }
            }
          }
        `;

        return <AppProvider>
            <Page>
                <h1>Polaris styling</h1>
            <Query query={MOVIES_QUERY}>
              {({ loading, error, data }) => {
                if (loading) return <div>Fetching</div>;
                if (error) return <div>Nope!</div>;
                return <div>
                    {data.movies.map(() => <div>
                        <li>
                          <ul key={data.movies.id} />
                          <ul>{data.movies.title}</ul>
                          <ul>{data.movies.description}</ul>
                        </li>
                      </div>)}
                  </div>;
              }}
            </Query>
            </Page>
          </AppProvider>;
    }
    }
export default MovieList