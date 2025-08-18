import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import "./index.css";
import App from "./App.jsx";
import { Provider } from "react-redux";
import Store from "./P1src/store";
import store2 from "./P2src/store2.js";
createRoot(document.getElementById("root")).render(
  <StrictMode>
    <Provider store={store2}>
      {/* <Provider store={Store}> */}
        <App />
      {/* </Provider> */}
    </Provider>
  </StrictMode>
);
