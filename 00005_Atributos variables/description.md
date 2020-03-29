Planteamos que la respuesta del mensaje no sea constante y que dependa de una variable, pero aún no logramos hacer que dicha variable varíe. 

Es el paso que ahora vamos a dar. Necesitamos declarar métodos que hagan que la variable energia de `pepita` se modifique, que referencie a otros valores. Por ejemplo, podemos definir el método `volarEnCirculos()` que disminuye la energía de `pepita` en 20 unidades:

``` wollok
  method volarEnCirculos() {
     energia = energia - 20.
  }
``` 

El elemento sintáctico clave para que una variable varíe es el `=`. Cuando `pepita` recibe el mensaje `volarEnCirculos()`, decrementa su energía: se _reasigna_ y pasa a valer su valor anterior menos 20.  


> Ahora podes probar si pepita sigue estando feliz luego de volar:
>  
> * `ム pepita.estaFeliz()`
> * `ム pepita.volarEnCirculos()`
> * `ム pepita.estaFeliz()`

