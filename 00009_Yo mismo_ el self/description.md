En el ejercicio anterior vimos que un objeto (en este caso, `pepita`) le puede enviar mensajes a otro que conozca (en este caso, ciudades como `rosario`, `buenosAires` o `cordoba`): 

Probablemente el método te quedó parecido a esto: 

```scala
method volarHacia(destino) {
  energia = energia - (ciudad.kilometro() - destino.kilometro()).abs() / 10
  ciudad = destino
}
```

Está bien, pero un poco extenso y difícil de entender: un método hace muchas cosas. ¿Cuál es la solución a este problema? ¡Partir el problema en subproblemas, obvio! 

Esto se conoce como _delegar una responsabilidad_, o simplemente, **delegar**. Se trata de detectar tareas más pequeñas en las cuales descomponer una solución más compleja, identificar los objetos responsables de realizarlas y enviarles los mensajes correspondientes. Es lo que hacemos todos cuando tenemos que hacer algo difícil: Le pedimos a alguien que nos ayude.

En este caso, una tarea más pequeña que podemos _delegar_ es el cálculo de distancia desde la ciudad actual hasta el destino. Un método que se encargue de consultar los kilómetros, hacer la resta, obtener el valor absoluto y retornarlo. 

Pero antes de hacerlo, tenemos que determinar qué objeto va a asumir dicha responsabilidad, es decir, va a tener declarado un método que lo haga. ¿A quién te parece que pepita le puede pedir ayuda? Las opciones son los objetos que tenemos, como la misma `pepita` y las diferentes ciudades, o declarar uno nuevo.

Empecemos plantando que `pepita` sea la responsable y hagamos un método para calcular la distancia a volar:

```wollok
  method distancia(destino) {
    return (ciudad.kilometros() - destino.kilometros()). abs() 
  }
```

Y ahora, al declarar el metodo volarHasta(destino) necesitamos representar que `pepita` se manda un mensaje a sí misma para calcular la distancia:

```wollok
  method volarHacia(destino) {
    energia = energia - self.distancia(destino) / 10
    ciudad = destino
  }
```

Como se ve, la forma en que un objeto delega un mensaje a **él mismo** , es utilizar la referencia `self` como objeto receptor del mensaje. En este contexto, `self` es `pepita`. 

> * Primero, comprobá que funcione lo anterior.
> * Después, declará en `pepita` un nuevo método `volarALaCapital()` que sin recibir parámetro haga que pepita vuele a Buenos Aires. Hacelo sin repetir lógica. 
