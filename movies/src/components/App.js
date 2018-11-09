import React, { Component } from "react";
import MovieList from "./MovieList";
import CreateMovie from "./createMovie"

class App extends Component {
  render() {

    /* this does not return any data on the page ( I havent worked that bit out yet)
     But if you check the network tab you will see an array of movies*/
     return <CreateMovie />
  }
}
export default App;
