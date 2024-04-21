const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.render("index.ejs", {message: "first node.js server"})
});

const port = process.env.PORT || 3000
app.listen(port, () => console.log('server started port ${port}'));
