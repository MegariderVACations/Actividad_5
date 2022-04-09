const { app, BrowserWindow, ipcMain } = require("electron");
const path = require("path");
const mysql = require("mysql2/promise");

const createWindow = () => {
  const ventana = new BrowserWindow({
    width: 900,
    height: 900,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: true,
      preload: path.join(app.getAppPath(), "preload.js")
    }
  });

  ventana.loadFile("index.html");
}

app.whenReady().then(createWindow);

ipcMain.handle("guardar", async (event, facts) => {
  const conexion = await mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "nuevaPass",
    database: "tareaunidad4"
  });

  for (const fact of facts) {
    await conexion.query(
      "INSERT INTO registros VALUES(?, ?, ?, ?, ?, ?, ?)",
      [fact.id, fact.type, fact.text, fact.user, fact.createdAt, fact.updatedAt, fact.timestamp],
    );
  };

  conexion.end();
});

ipcMain.handle("consultar", async (event, animalType, amount) => {
  const conexion = await mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "nuevaPass",
    database: "tareaunidad4"
  });

  amount = amount == "" ? 1 : amount;

  if (animalType == "") {
    const animalTypes = ["cat", "dog", "horse", "snail"];
    animalType = animalTypes[Math.floor(Math.random() * animalTypes.length)];
  }

  const [rows] = await conexion.execute(
    "SELECT _id, type, text, user, createdAt, updatedAt FROM registros WHERE type=? LIMIT " + amount,
    [animalType]
  );

  conexion.end();
  return rows;
});