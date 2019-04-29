import React, { Component } from "react";
import CreateMovie from "./createMovie";
import MovieList from "./MovieList";
import CreateBook from "./createBook";
import {Router, Route, hashHistory, IndexRoute} from 'react-router';

class App extends Component {
  render() {
    return(
    <Router history ={hashHistory}>
    <Route path='/' component={App}>
    <IndexRoute component={MovieList} />
     </Route>
    </Router>
    )
  }
}
export default App;
