# Taller de shaders

## Propósito

Estudiar los [patrones de diseño de shaders](http://visualcomputing.github.io/Shaders/#/4).

## Tarea

1. Hacer un _benchmark_ entre la implementación por software y la de shaders de varias máscaras de convolución aplicadas a imágenes y video.
2. Implementar un modelo de iluminación que combine luz ambiental con varias fuentes puntuales de luz especular y difusa. Tener presente _factores de atenuación_ para las fuentes de iluminación puntuales.
3. (grupos de dos o más) Implementar el [bump mapping](https://en.wikipedia.org/wiki/Bump_mapping).

## Integrantes

Complete la tabla:

| Integrante | github nick |
|------------|-------------|
|Daniel Alejandro Escobar Prieto|daryhez|
|Diego Alejandro Gomez Parra|dieosiris23|

## Informe

En el benchmarck se implementaron diferntes máscaras de convolución entre las que se encuentran Blur (letra 'z'), detección de bordes (letra 'x'), laplace (letra 'c'), sobel horizontal (letra 'v') y sobel vertical (letra 'b'). Para cambiar el PImage entre imágen y video se usan las teclas 'a' y 's' respectivamente. En consola se pueden observar claramente los framerates. Las implementaciones se hicieron tanto por software como por shaders.

En el punto de lighting shaders. Se renderizó la misma lata pero con una esfera que se puede mover fácilmente que representa la fuente de luz.

El tercer punto no se pudo completar desafortunadamente. Pero se hizo un gran intento.


## Entrega

Fecha límite ~~Lunes 1/7/19~~ Domingo 7/7/19 a las 24h. Sustentaciones: 10/7/19 y 11/7/19.