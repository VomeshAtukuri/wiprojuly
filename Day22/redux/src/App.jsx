import { useState } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import "./App.css";
import Names from "./P1src/names";
import CounterComponent from "./P2src/counterComponent";
function App() {
  const [count, setCount] = useState(0);
  function increment() {
    setCount((count) => (count + 1));
    console.log(count);
  }
  return (
    <>
      <h1>{count}</h1>
      <button onClick={increment}>Increment</button>
      <Names />
      <CounterComponent />
    </>
  );
}

export default App;
