import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import { createBrowserRouter } from 'react-router'
import { RouterProvider } from 'react-router/dom'
import CustomerAdd from './components/CustomerAdd.jsx'
import CustomerSearch from './components/CustomerSearch.jsx'
import Login from './components/CustomerAuthentication.jsx'
const router = createBrowserRouter([
  {
    path: "/",
    element: <App />,
  },
  {
    path: "/addcustomer",
    element: <CustomerAdd />,
  },
  {
    path: "/showcustomer",
    element: <CustomerSearch />,
  },
  {
    path: "/login",
    element: <Login />,
  },
  {
    path: "/searchbyid",
    element: <CustomerSearch />,
  },
])
createRoot(document.getElementById('root')).render(
  <RouterProvider router={router} />
)
