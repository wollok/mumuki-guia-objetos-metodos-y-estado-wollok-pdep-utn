En el problema anterior planteamos que había varias alternativas para **delegar** la responsabilidad del cálculo de distancia entre dos ciudades.

Hicimos una primer solución donde la misma Pepita lo resolvía, utilizando `self`. :warning: ¿Por qué debería ser `pepita`, cuya comportamiento esperado es cantar, comer, volar y decirnos si está feliz, la responsable de calcular la distancia entre dos ciudades? Funciona, pero no parece ser el objeto mas adecuado para hacerlo.

Analicemos las otras opciones: ¿Qué pasa si delegamos a `rosario` la responsabilidad del calculo de distancia respecto de otra ciudad?

Podriamos hacer 

```wollok
object pepita {
  var ciudad = rosario
  var energia = 100
  
  method volarHasta(destino) {
    energia = energia - ciudad.distancia(destino)/10
    ciudad = destino
  }
}

object rosario {
  method distancia(destino) {
    return (self.kilometros() - destino.kilometros()).abs()
  }
}  
```

¿Y cuando Pepita está en Buenos Aires y quiere volar a otro lado? Como en ese caso el atributo `ciudad` hace referencia al objeto `buenosAires`, deberíamos también definirle el método `distanciaA(lugar)` y tendría el mismo código copiado. 
Lo mismo para Córdoba. Todas las ciudades deberían saber hacelo y tener el mismo código. Ya veremos más adelante mejores formas de hacerlo siguiendo este camino.  

Pero veamos ahora otra alternativa: Crear un objeto que se encargue del cálculo de distancias.


Si por ejemplo asumimos que existe el mapa, la forma de utilizarlo desde `pepita` sería:

```wollok
object pepita {
  var ciudad = rosario
  var energia = 100
  
  method volarHasta(destino) {
    energia = energia - mapa.distanciaEntre(ciudad, destino)/10
    ciudad = destino
  }
}
```

> Declará el objeto `mapa` y los métodos necesarios para que funcione adecuadamente.

