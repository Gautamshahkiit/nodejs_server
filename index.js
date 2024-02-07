const express = require('express');
const path = require('path');
// const router = express.Router();
const PORT = 8000;

const app = express();

app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname + '/views/banner.html'));
});

app.listen(PORT, () => {
    console.log(`Server Connected\n`);
})