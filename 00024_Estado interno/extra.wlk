object pepita {
  var energia = 100
  var ciudad = rosario
  
  method estaFeliz(){
    return energia >= 90
  }
  
  method volarHacia(destino) {
      energia = energia - 100
      ciudad = destino
  }
  
  method volarEnCirculos() {
     energia = energia - 20
  }
  
  method comerLombriz() {
      energia = energia + 10
  }
  
}

object buenosAires { }

object rosario { }