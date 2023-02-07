const express = require('express');

const PORT =5000;
const HOST = '0.0.0.0';

const app = express();
let cnt = 0
app.get('/', (req, res) => {
    cnt+=1
    res.send(`${cnt} number of times this page has been visisted`);
});

app.listen(PORT, HOST, () => {
    console.log(`website running on Port :${PORT}`);
});
