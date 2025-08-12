import React from "react";
import { useEffect, useState } from "react";

export default function Employ() {
  const [employ, setEmploy] = useState([]);
  async function handleemploy() {
    const data = await fetch("http://localhost:5006/api/Employs");
    const result = await data.json();
    setEmploy(result);
  }
  useEffect(() => {
    handleemploy();
  }, []);
  return (
    <div>
      <h1>Employ</h1>
      <table>
        <thead>
        <tr>
          <th>Empno</th>
          <th>Name</th>
          <th>Basic</th>
        </tr>
        </thead>
        <tbody>
        {employ.map((item) => {
          return (
            <tr key={item.empno}>
              <td>{item.empno}</td>
              <td>{item.name}</td>
              <td>{item.basic}</td>
            </tr>
          );
        })}
        </tbody>
      </table>
    </div>
  );
}
