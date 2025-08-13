import React, { useState } from 'react';

const CreateAccount = () => {
  const [result, setResult] = useState('');
  const [data, setData] = useState({
    firstName: '',
    lastName: '',
    city: '',
    state: '',
    amount: 0,
    cheqFacil: '',
    accountType: ''
  });

  const createAccount = () => {
    fetch("https://localhost:7202/api/BankCustom", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        firstName: data.firstName,
        lastName: data.lastName,
        city: data.city,
        state: data.state,
        amount: data.amount,
        cheqFacil: data.cheqFacil,
        accountType: data.accountType
      })
    })
      .then(response => {
        if (!response.ok) {
          throw new Error(`HTTP error! Status: ${response.status}`);
        }
        return response.json();
      })
      .then(respData => {
        setResult(respData);
        console.log(respData);
      })
      .catch(error => {
        console.error("Error creating account:", error);
        setResult("Failed to create account.");
      });
  };

  const handleChange = (event) => {
    setData({
      ...data,
      [event.target.name]: event.target.value
    });
  };

  return (
    <div>
      <label>First Name: </label>
      <input type="text" name="firstName" value={data.firstName} onChange={handleChange} /> <br /><br />
      <label>Last Name: </label>
      <input type="text" name="lastName" value={data.lastName} onChange={handleChange} /> <br /><br />
      <label>City: </label>
      <input type="text" name="city" value={data.city} onChange={handleChange} /> <br /><br />
      <label>State: </label>
      <input type="text" name="state" value={data.state} onChange={handleChange} /> <br /><br />
      <label>Amount: </label>
      <input type="number" name="amount" value={data.amount} onChange={handleChange} /> <br /><br />
      <label>Cheq Facil: </label>
      <input type="text" name="cheqFacil" value={data.cheqFacil} onChange={handleChange} /> <br /><br />
      <label>Account Type: </label>
      <input type="text" name="accountType" value={data.accountType} onChange={handleChange} /> <br /><br />
      <input type="button" value="Create Account" onClick={createAccount} /> <br />
      <b>{result}</b>
    </div>
  );
};

export default CreateAccount;
