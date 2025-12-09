// api/server.js - Simple Node.js API with test fail
const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

app.get('/health', (req, res) => {
  res.status(200).json({ status: 'API Healthy!' });
});

app.post('/echo', (req, res) => {
  res.json({ echoed: req.body.message });
});

// Intentional FAIL for demo: Comment this line for PASS
throw new Error('API Test Failed: Endpoint validation error! Fix before merge.');

app.listen(port, () => {
  console.log(`API server running on port ${port}`);
});

module.exports = app;  // For testing