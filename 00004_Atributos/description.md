Acabamos de aprender una de las reglas fundamentales del envío de mensaje: si a un objeto no le decimos **cómo** reaccionar ante un mensaje, y se lo envíamos igual, no lo entenderá y nuestro programa se romperá. Y la forma de evitar esto es declarando un **método**. 

Ahora bien, el método `estaFeliz()` lo hicimos de una manera bastante trivial en la que siempre retorna lo mismo, siempre `true`. Sería más realista que la respuesta de `pepita` pudiera ser a veces afirmativa y otras negativa, dependiendo de alguna circunstancia.  

Para ello, vamos a plantear que la felicidad de `pepita` depende de la energía que tenga: Se siente feliz cuando tiene al menos 90 unidades de energía. ¿Y como recuerda `pepita` en cada momento cuánta energía tiene? ¿Cómo sabe con cuánta energía comienza?

```wollok
object pepita {
  var energia = 100
  
  method estaFeliz() {
     return energia >= 90
  }
}
```
Tiene un atributo llamado `energia` y le indicamos un valor inicial de 100; en particular un atributo **variable** para que en otro momento su valor pueda ser otro. Luego en el método utilizamos dicha variable para que nos diga si es cierto que es mayor o igual a 90.

> Ya lo tenemos declarado. ¡Simplemente probá enviarle un mensaje a pepita a ver qué sucede! 
> ¿Qué pasa si lo envías varias veces? 
> Para pensar: ¿Hay forma que alguna vez responda negativamente? 
