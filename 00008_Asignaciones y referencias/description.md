Miremos este método con más detenimiento: 

```wollok
method volarEnCirculos() {
   energia = energia - 20
}
```

Lo que estamos haciendo allí es cambiar la energía de `pepita`: pasa de su valor actual a ese valor, menos 20. Por ejemplo, pasa de `100` a `80`. ¿Significa esto que el `100` _se transforma_ en un `80` ? :thought_balloon:

No, en lo absoluto. 

En objetos trabajamos con _referencias_: `energia` (un atributo) es una referencia a un objeto, en particular una referencia variable, que inicialmente _apunta_  al objeto `100`.

<img src="https://github.com/wollok/mumuki-guia-objetos-metodos-y-estado-wollok/raw/master/assets/reference1.png" width="300" />

Luego, la operación de asignación cambia ese apuntador: La variable `energia` pasa a referenciar al resultado de la resta, que es el objeto `80`.

<img src="https://github.com/wollok/mumuki-guia-objetos-metodos-y-estado-wollok/raw/master/assets/reference2.png" width="300" />

> Veamos si se va entendiendo: `pepita` también sabe `comerLombriz()`, y cuando lo hace, aumenta su energía en 10 unidades. :muscle:

> Sabiendo esto, agregá a `pepita` el método `comerLombriz()` :bug:

