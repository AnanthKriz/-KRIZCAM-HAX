const express = require('express');
const app = express();
const path = require('path');
const fs = require('fs');
const bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'public')));

app.post('/capture', (req, res) => {
    const image = req.body.image;
    const base64Data = image.replace(/^data:image\/png;base64,/, "");
    const filename = "captured_" + Date.now() + ".png";
    fs.writeFileSync(path.join(__dirname, 'captured', filename), base64Data, 'base64');
    res.sendStatus(200);
});

app.listen(3000, () => {
    console.log("Server running at http://localhost:3000");
});
