import "./App.css";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import EmployeeShow from "./components/Employshow";
import DashBoard from "./components/Dashboard";
import ApplyLeave from "./components/Applyleave";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<EmployeeShow />} />
          <Route path="/dashBoard" element={<DashBoard />} />
          <Route path="/applyLeave" element={<ApplyLeave />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
