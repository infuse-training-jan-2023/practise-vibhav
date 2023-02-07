const express = require('express');
const bodyParser = require('body-parser');  
const cors = require('cors');

const PORT = 5000;
const HOST = '0.0.0.0';

const app = express();
app.use(bodyParser.urlencoded({ extended: false }))
app.use(cors());

let users = [{first_name: 'Abby', email: 'abby.jhones@mail.com', last_name: 'jhones', contact: '9823451234' }]

app.post('/add_users', (req, res) => {
    console.log("POST  request")
    let data = {  
        first_name:req.body.first_name,  
        last_name:req.body.last_name, 
        contact:req.body.contact,
        email:req.body.email
    };  
    console.log(data)
    users.push(data)
    console.log("Visting View User")
    res.redirect('http://localhost:3000/viewuser')
});

app.get('/view_users', (req, res) => {
    console.log("GET  request")
    res.json(users);
});


app.listen(PORT, HOST, () => {
    console.log(`Running on port: ${PORT}`);
});
