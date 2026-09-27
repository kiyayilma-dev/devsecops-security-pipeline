const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Root endpoint
app.get('/', (req, res) => {
  res.json({ 
    message: 'Hello from Kiya\'s DevOps pipeline!',
    timestamp: new Date().toISOString()
  });
});

// Health check endpoint
app.get('/health', (req, res) => {
  res.status(200).json({ status: 'ok' });
});

// Items endpoint
app.get('/items', (req, res) => {
  res.json({ items: ['docker', 'terraform', 'github-actions', 'aws'] });
});

// Start server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});