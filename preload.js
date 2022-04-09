const { ipcRenderer } = require("electron");
let fecha;

window.addEventListener("DOMContentLoaded", () => {
  const botonGuardar = document.getElementById("guardar");
  const botonPeticion = document.getElementById("peticion");
  const botonConsulta = document.getElementById("consultar");
  const textoUrl = document.getElementById("textoUrl");
  const animalType = document.getElementById("animalType");
  const amount = document.getElementById("amount");

  const montarTabla = res => {
    const tbodyActual = document.getElementById("tbodyResultados");
    const tbodyNuevo = document.createElement("tbody");

    res.map(fact => {
      const tr = document.createElement("tr");

      tr.append(...[
        Object.assign(document.createElement("td"), { innerHTML: fact._id }),
        Object.assign(document.createElement("td"), { innerHTML: fact.type }),
        Object.assign(document.createElement("td"), { innerHTML: fact.text }),
        Object.assign(document.createElement("td"), { innerHTML: fact.user }),
        Object.assign(document.createElement("td"), { innerHTML: fact.createdAt }),
        Object.assign(document.createElement("td"), { innerHTML: fact.updatedAt })
      ]);

      tbodyNuevo.appendChild(tr);
    });

    tbodyNuevo.id = "tbodyResultados";
    tbodyResultados.parentNode.replaceChild(tbodyNuevo, tbodyActual);
  };

  botonConsulta.onclick = () => {
    ipcRenderer.invoke("consultar", animalType.value, amount.value).then(res => {
      textoUrl.innerHTML = "";
      montarTabla(res);
    });
  };

  botonGuardar.onclick = () => {
    const tbody = document.getElementById("tbodyResultados");
  
    if (tbody.hasChildNodes()) {
      let facts = [];

      tbody.childNodes.forEach(tr => {
        let fact = { timestamp: fecha };

        tr.childNodes.forEach((campo, i) => {
          fact[document.querySelectorAll("th")[i].innerHTML] = campo.innerHTML;  
        });

        facts.push(fact);
      });

      ipcRenderer.invoke("guardar", facts);
    } else {
      alert("No se puede guardar algo vacio");
    }
  };

  botonPeticion.onclick = () => {
    fetch("https://cat-fact.herokuapp.com/facts/random?" + new URLSearchParams({
      ...(animalType.value != "" && { animal_type: animalType.value }),
      ...(amount.value != "" && { amount: amount.value })
    })).then(data => {
      textoUrl.innerHTML = "<b>URL:</b><br/>" + data.url;
      fecha = new Date().toISOString();
      return data.json();
    }).then(res => {
      montarTabla(res.length ? res : [res]);
    });
  };
});