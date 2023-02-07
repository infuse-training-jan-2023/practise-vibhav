import './App.css';
import { Route, Routes } from "react-router-dom"
import {useEffect, useState} from 'react';

function AddUser() {
  return(
    <div>
      <h2>Add new User</h2>
      <form action="http://localhost:5000/add_users" method="post">
        <div className="form-group">
          <label for="first_name">First Name</label>
          <input type="text" className="form-control" id="first_name" placeholder="First Name ..." name="first_name" required/>
        </div>
        <div className="form-group">
          <label for="last_name">Last Name</label>
          <input type="text" className="form-control" id="last_name" placeholder="Last Name ..." name="last_name" required/>
        </div>
        <div className="form-group">
          <label for="contact">Contact</label>
          <input type="text" className="form-control" id="contact" placeholder="Contact ..." name="contact" required/>
        </div>
        <div className="form-group">
          <label for="email">Email</label>
          <input type="text" className="form-control" id="email" placeholder="Email ..." name="email" required/>
        </div>
        
        <button type="submit" className="btn btn-default">Submit</button>
      </form>
    </div>
  )
}

function ViewUser() {
  const [users, setUsers] = useState([])

  const fetchUsers = async () => {
    try {
      let url = 'http://localhost:5000/view_users'
      const response = await fetch(url)
      const data = await response.json()
      setUsers(data);
      console.log(data)
    } catch (error) {
      console.log(error)
    }
  }

  useEffect(() => {
    fetchUsers();
  }, [])
  
  return(
    <div>
      <h2>View Users</h2>
        <table className="table table-hover table-bordered">
          <thead>
            <tr>
              <th>FirstName</th>
              <th>LastName</th>
              <th>Email</th>
              <th>Contact</th>
            </tr>
          </thead>
          <tbody>
            {users.map(user =>{
              return(
                <tr>
                  <td>{user.first_name}</td>
                  <td>{user.last_name}</td>
                  <td>{user.email}</td>
                  <td>{user.contact}</td>
                </tr>
              )
            })}
          </tbody>
        </table>
    </div>
  )
}

function DisplayHomePage() {
  return(
    <div className="container">
      <a href="http://localhost:3000/adduser" className="btn btn-primary" role="button" aria-pressed="true">Add User</a>
      <a href="http://localhost:3000/viewuser" className="btn btn-primary" role="button" aria-pressed="true">View User</a>
    </div>
  )
}

function App() {
  return (
    <div className="container">
      <Routes>
          <Route path="/adduser" element = {<AddUser/>} />
          <Route path="/" element = {<DisplayHomePage/>} />
          <Route path="/viewuser" element = {<ViewUser/>} />
      </Routes>
    </div>
  );
}

export default App;
