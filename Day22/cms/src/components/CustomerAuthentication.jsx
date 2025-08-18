import { useState } from "react";
import axios from "axios";

function Login() {
  const [form, setForm] = useState({ username: '', password: '' });

  const handleChange = (e) => {
    setForm({ ...form, [e.target.name]: e.target.value });
  };

  const handleLogin = async (e) => {
    e.preventDefault();
    try {
      const res = await axios.post('https://localhost:7124/api/Customers/login', {
        custUsername: form.username,
        custPassword: form.password
      });

      const token = res.data.token;
      localStorage.setItem("token", token); // save JWT
      alert("Login successful");
    } catch (err) {
      console.error(err.response?.data || err.message);
    }
  };

  return (
    <form onSubmit={handleLogin}>
      <input name="username" placeholder="Username" onChange={handleChange} />
      <input name="password" type="password" placeholder="Password" onChange={handleChange} />
      <button type="submit">Login</button>
    </form>
  );
}

export default Login;