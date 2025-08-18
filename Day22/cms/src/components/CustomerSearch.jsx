import axios from "axios";
import { useState } from "react";

export default function CustomerSearch() {
  const [id, setId] = useState("");
  const [customer, setCustomer] = useState({});

  function searchCustomer(id) {
    event.preventDefault();
    console.log("Customer Id:", id);
    axios
      .get(`https://localhost:7124/api/Customers/${id}`)
      .then((res) => {
        setCustomer(res.data);
      })
      .catch((err) => {
        console.log(err);
      });
  }

  return (
    <div style={{ display: "flex", flexDirection: "column", gap: "10px" }}>
      <h1>Search By Id</h1>
      <input
        type="text"
        name="customerId"
        placeholder="Customer Id"
        value={id}
        onChange={(e) => setId(e.target.value)}
      />
      <button
        onClick={() => {
          searchCustomer(id);
        }}
      >
        Search
      </button>
      <p>Customer details: {JSON.stringify(customer)}</p>
    </div>
  );
}
