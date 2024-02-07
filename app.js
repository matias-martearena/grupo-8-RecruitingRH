// ---------------- Require's ----------------- //
const express = require('express')

// -------------- Express() ------------------ //
const app = express()

// -------------- Inicializacion ------------ //
app.get('/', (req, res) => {
   res.send('Hola Mundo!')
})

// ------------- PORT ----------------------- //
const PORT = process.env.PORT || 3001
app.listen(PORT, () =>
   console.log(`Servidor en PORT:http://localhost:${PORT}/`)
)
