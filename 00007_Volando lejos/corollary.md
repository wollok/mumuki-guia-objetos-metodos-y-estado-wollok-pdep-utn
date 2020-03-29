¡Bien hecho! Acabamos de ver que **un objeto también puede enviarle mensajes a otros objetos**. 

En este caso, `pepita` le envía el mensaje `kilometro()` a `rosario`, a `buenosAires` o a `cordoba`, según a qué objeto haga referencia su atributo `ciudad` en el momento, y a qué objeto haga referencia la variable usada como parámetro del método. Pepita podría volar hasta cualquier ciudad, siempre y cuando haya un objeto que represente dicha ciudad y tenga un método llamado `kilometro()` que retorne el número correspondiente.

El `-` tambien es un mensaje que se envía al objeto que se obtiene al enviar el mensaje `kilometro()` a la ciudad actual y recibe como parámetro el objeto que surge del mensaje `kilometro()` del destino indicado. A su vez, el objeto que retorna la resta recibe el mensaje `abs()`.

