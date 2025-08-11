import React, {Component} from 'react';

const ButtonEx = () => {

  const vomesh = () => {
    alert("Hi I am Vomesh...");
  }

  const venkata = () => {
    alert("Hi i am Venkata...");
  }

  const uday = () => {
    alert("Hi I am Uday...");
  }

  return(
    <div>
      <input type="button" value="Vomesh" onClick={vomesh} /> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" value="Venkata" onClick={venkata} />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" value="Uday" onClick={uday} />
    </div>
  )
} 

export default ButtonEx;