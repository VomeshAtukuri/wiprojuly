import { useState } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import "./App.css";
import CustomerAdd from "./components/CustomerAdd";
import { Link } from "react-router";

function App() {
  return (
    <div style={{ display: "flex", flexDirection: "column", gap: "10px" }}>
      <h1>Welcome to Canteen Management</h1>
      <Link to="/login">Login</Link>
      <Link to="/addcustomer">Add Customer</Link>
      <Link to="/showcustomer">Show Customer</Link>
      <Link to="/searchbyid">Search By Id</Link>
    </div>
  );
}

export default App;
