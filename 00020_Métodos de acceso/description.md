Como vimos, si queremos que un objeto pueda entender mensajes que pretenden acceder a sus atributos, necesitamos declarar los métodos correspondientes.

Comunmente se los denomina **accessors** y son métodos simples de declarar:

```wollok
object pepita {
  var energia = 100
  var ciudad = rosario

   method energia() {
      return energia
   }

   method energia(valor) {
      energia = valor
   }
}
```

* El primero permite retornar la variable `energía`. Utilizamos `return` para indicar lo que se devuelve como todos los métodos que representan preguntas. Comunmente se los llama **getters**.
* El segundo permite modificar la variable `energia`. Utilizamos el `=` para realizar la asignación, como otros métodos que provocan un efecto en el objeto; el método tiene un parámetro en el que se recibe el objeto a asignar. Comunmente se los llama **setters**.

Como se ve, sintácticamente no hay elementos nuevos. Por convención, se les pone el mismo nombre de método que el atributo al que accede.

> ¡Probá ahora como funcionan!
> Podes repetir las consultas anteriores y comprobar cuáles tienen sentido y cuáles no :confused: :

> * `ム pepita.energia`
> * `ム pepita.energia = 200`
> * `ム pepita.energia()`
> * `ム pepita.energia(200)`

