import './App.css';
import Employ from './components/Employ';
import EmploySearch from './components/EmploySearch'; 
import CreateAccount from './Bankcomponents/createAccount';
import SearchAccount from './Bankcomponents/searchAccount';
import ShowAccount from './Bankcomponents/showAccount';
import Deposit from './Bankcomponents/deposit';
import Withdraw from './Bankcomponents/withdraw';
function App() {
  return (
    <div className="App">
      {/* 
        Employ Project 
        <Employ/>
        <EmploySearch/> 
      */}
    <CreateAccount /> <br/>
     <SearchAccount /> <br/>
     <ShowAccount /> <br/>
     <Deposit /> <br/>
     <Withdraw />
    </div>
  );
}

export default App;
