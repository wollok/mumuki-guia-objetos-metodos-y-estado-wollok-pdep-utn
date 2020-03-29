Revisemos la declaración de los atributos de `pepita`:

```wollok
object pepita {
  var energia = 100
  var ciudad = rosario

  // etc

}
```
Agregamos un nuevo concepto: Al conjunto de atributos se lo denomina **estado**. Lo que podemos observar es que el estado de pepita está conformado por `ciudad` y `energia`, dado que son sus atributos. 

> Pero antes de avanzar, probemos consultar el estado de `pepita`:

> * ¿Qué pasa si hacemos  `ム pepita.energia`?
> * ¿Y si pretendemos asignar `ム pepita.energia = 200` ? 

Efectivamente, se produce un error que nos informa que se trata de expresiones inválidas.

Lo que sucede es que el estado es siempre **privado**, es decir, sólo el objeto puede utilizar sus atributos, lo que explica por qué fallaban las consultas anteriores. Y para reforzar la idea que es propio del objeto, se suele hablar de estado _interno_. 

> Para evitar el problema, si recordás que para comunicarse con los objetos se les debe enviar mensajes, podés intentar:

> * `ム pepita.energia()`
> * `ム pepita.energia(200)`


Pero tampoco funciona. La respuesta es simple: **los atributos NO son métodos**. No existe ningún metodo llamado `energía()` ni `energia(valor)` que reciba un parámetro. Lo mismo sucede con `ciudad`, hay un atributo pero ningún método llamado así.
