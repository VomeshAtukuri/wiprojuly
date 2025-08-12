import React, { Component, useState } from "react";

const EmploySearch = () => {
  const [empno, setEmpno] = useState(0);
  const [employData, setEmployData] = useState({});

  const handleChange = (event) => {
    setEmpno(event.target.value);
  };
  const show = () => {
    fetch("http://localhost:5006/api/Employs/" + empno)
      .then((response) => response.json())
      .then((result) => {
        setEmployData(result);
      });
  };
  return (
    <div>
      <label>Employ No : </label>
      <input
        type="number"
        name="empno"
        value={empno}
        onChange={handleChange}
      />{" "}
      <br />
      <input type="button" value="Show" onClick={show} />
      <hr />
      Employ No : <b> {employData.empno}</b> <br />
      Employ Name : <b>{employData.name}</b> <br />
      Gender : <b>{employData.gender}</b> <br />
      Department : <b>{employData.dept}</b> <br />
      Designation : <b>{employData.desig}</b> <br />
      Salary : <b>{employData.basic}</b>
    </div>
  );
};

export default EmploySearch;
