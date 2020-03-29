Recapitulando todo lo que fuimos haciendo ¿A qué otros objetos puede un objeto enviarle mensajes? ¿Cómo se indica quién es el objeto receptor en cada caso?

* A sí mismo, mediante `self`. 
* A cualquier otro objeto declarado mediante la palabra object, mediante su idendificador. (por ejemplo `mapa`)
* A cualquier otro objeto predefinido, mediante su representacion literal (por ejemplo `10`, `"hola"`, `true`)
* A cualquier otro objeto al que hace referencia un atributo del objeto (por ejemplo, `energia` y `ciudad` en `pepita`)
* A cualquier otro objeto al que hace referencia un parametro u otra variable local (por ejemplo, `destino` en el metodo `distanciaHasta(destino)` de `pepita` )