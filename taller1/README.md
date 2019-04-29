# Taller de análisis de imágenes por software

## Propósito

Introducir el análisis de imágenes/video en el lenguaje de [Processing](https://processing.org/).

## Tareas

Implementar las siguientes operaciones de análisis para imágenes/video:

* Conversión a escala de grises.
* Aplicación de algunas [máscaras de convolución](https://en.wikipedia.org/wiki/Kernel_(image_processing)).
* (solo para imágenes)   del histograma.
* (solo para imágenes) Segmentación de la imagen a partir del histograma.
* (solo para video) Medición de la [eficiencia computacional](https://processing.org/reference/frameRate.html) para las operaciones realizadas.

Emplear dos [canvas](https://processing.org/reference/PGraphics.html), uno para desplegar la imagen/video original y el otro para el resultado del análisis.

## Integrantes

Complete la tabla:

| Integrante 			               | 				github nick |
|--------------------------------------|----------------------------|
|Diego Alejandro Gomez Parra           | dieosiris23                |
|Daniel Alejandro Escobar Prieto       | daryhez                    |

## Discusión

Se ralizaron todos los puntos con respecto a la imagen.
Se imprimen varias imagenes la primera imagen original , luego la imagen pasada por escala de grises por promedio de los componentes R, G y B del pixel y el valor obtenido se estableció como valor de gris.
Posterior a eso, se calculó en un arreglo las ocurrencias de los grises, se calculó el tono de gris más repetido y se estableció como valor máximo, luego se mapearon todos los tonos de grises entre 0 y el valor máximo y se pintó el histograma dejando un pixel de por medio.
Se realiza la segmentacion de la imagen de los colores mas billantes con color verde exactamente los valores que esten entre 200 y 255.
Por ultimo se realiza la convolucion de la imagen usando un kernel .

