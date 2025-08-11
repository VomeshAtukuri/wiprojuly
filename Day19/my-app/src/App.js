import "./App.css";
import First from "./components/First";
import Second from "./components/Second";
import Third from "./components/Third";
import ButtonEx from "./components/Buttons";
import Four from "./components/Fourth";
import Five from "./components/Fifth";

function App() {
  return (
    <div className="App">
      <p>Welcome to React Programming...From Wipro</p>
      <p>
        <First />
      </p>
      <p>
        <Second />
      </p>
      <p>
        <Third firstName="Vomesh" lastName="Atukuri" company="wipro" />
      </p>
      <p>
        <ButtonEx />
      </p>
      <p>
        <Four />
      </p>
      <p>
        <Five />
      </p>
    </div>
  );
}

export default App;
