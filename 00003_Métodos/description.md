¡Ups! Nuestro objeto recién creado no entiende `cantar()` ni los otros mensajes :confused: . Pero vamos por partes...

¿Cómo hacemos que un objeto entienda un mensaje? ¿Cómo sabe `pepita` qué cuando le piden cantar debe responder con su canto característico? Tenemos que declararle un **método**: 

```wollok
object pepita {
   method cantar() {
      return "pri pri pri"
   }
}
```

El método se declara en el objeto, lleva por nombre el mismo que el mensaje y contiene una descripción de **qué hacer cuando se recibe un mensaje del mismo nombre**. En este caso, la implementación del método es sólo retornar "pri pri pri".

> ¡Esta colaboración ya no va a romperse! ¿No nos creés? 
> Esta vez ya declaramos por vos a pepita con su metodo `cantar()`. Probá de nuevo enviarle el mensaje y fijate qué pasa. 
> 
> :warning: Notá que el mensaje es aquello que envías, mientras que el metodo es aquello que declarás en el objeto. 