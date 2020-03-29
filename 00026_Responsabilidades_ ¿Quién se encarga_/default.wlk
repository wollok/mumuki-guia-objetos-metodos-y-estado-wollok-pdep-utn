object rosario {
  method kilometro() {
      return 298
  }
}

object buenosAires {
  method kilometro() {
     return 0
  }
}

object cordoba {
  method kilometro() {
     return 696
  }
}

object pepita {
  var energia = 100
  var ciudad = rosario
  
  method volarHacia(destino) {
    energia = energia - mapa.distanciaEntre(ciudad, destino)/10
    ciudad = destino
  }

  method energia() {
    return energia
  }
  
  method ciudad() {
    return ciudad
  }
}
