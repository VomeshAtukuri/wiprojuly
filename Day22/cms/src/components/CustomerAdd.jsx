import { useState } from "react";
import axios from "axios";
export default function CustomerAdd() {
  const [customer, setCustomer] = useState({
    custId: "",
    custName: "",
    custUsername: "",
    custPassword: "",
    city: "",
    state: "",
    email: "",
    mobileNo: "",
  });

  function addCustomer(event) {
    setCustomer({
      ...customer,
      [event.target.name]: event.target.value,
    });
  }

  function handleSubmit(e) {
    e.preventDefault();
    console.log("Final customer:", customer);
    axios.post("https://localhost:7124/api/Customers", customer).then((res) => {
      console.log(res);
    });
    setCustomer({
      custId: "",
      custName: "",
      custUsername: "",
      custPassword: "",
      city: "",
      state: "",
      email: "",
      mobileNo: "",
    });
  }

  return (
    <form
      onSubmit={handleSubmit}
      name="frmCustomer"
      style={{
        display: "flex",
        flexDirection: "column",
        gap: "10px",
        width: "400px",
      }}
    >
      <input
        type="text"
        name="custId"
        placeholder="Customer Id"
        value={customer.custId}
        onChange={addCustomer}
      />
      <input
        type="text"
        name="custName"
        placeholder="Customer Name"
        value={customer.custName}
        onChange={addCustomer}
      />
      <input
        type="text"
        name="custUsername"
        placeholder="Customer User Name"
        value={customer.custUsername}
        onChange={addCustomer}
      />
      <input
        type="password"
        name="custPassword"
        placeholder="Customer Password"
        value={customer.custPassword}
        onChange={addCustomer}
      />
      <input
        type="text"
        name="city"
        placeholder="City"
        value={customer.city}
        onChange={addCustomer}
      />
      <input
        type="text"
        name="state"
        placeholder="State"
        value={customer.state}
        onChange={addCustomer}
      />
      <input
        type="email"
        name="email"
        placeholder="Email"
        value={customer.email}
        onChange={addCustomer}
      />
      <input
        type="text"
        name="mobileNo"
        placeholder="Mobile No"
        value={customer.mobileNo}
        onChange={addCustomer}
      />

      <button type="submit">Add Customer</button>
    </form>
  );
}
