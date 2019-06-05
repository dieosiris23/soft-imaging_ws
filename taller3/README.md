# Taller raster

## Propósito

Comprender algunos aspectos fundamentales del paradigma de rasterización.

## Tareas

Emplee coordenadas baricéntricas para:

1. Rasterizar un triángulo.
2. Sombrear su superficie a partir de los colores de sus vértices.
3. (opcional para grupos menores de dos) Implementar un [algoritmo de anti-aliasing](https://www.scratchapixel.com/lessons/3d-basic-rendering/rasterization-practical-implementation/rasterization-practical-implementation) para sus aristas.

Referencias:

* [The barycentric conspiracy](https://fgiesen.wordpress.com/2013/02/06/the-barycentric-conspirac/)
* [Rasterization stage](https://www.scratchapixel.com/lessons/3d-basic-rendering/rasterization-practical-implementation/rasterization-stage)

Implemente la función ```triangleRaster()``` del sketch adjunto para tal efecto, requiere la librería [nub](https://github.com/nakednous/nub/releases).

## Integrantes

Complete la tabla:

| Integrante | github nick |
|------------|-------------|
|Daniel Alejandro Escobar Prieto|daryhez|
|Diego Alejandro Gomez Parra|dieosiris23|

## Discusión

Para el proceso de rasterización se usaron coordenadas baricéntricas para conocer si un punto P, está a la izquierda o a la derecha de una linea dada. Para este caso de estudio, tenemos en particular 3 lineas rectas formando un triángulo, así que para cada una de las líneas se verificó que el punto P estuviera a la derecha de cada una de las líneas; en caso de que fuera así, significa que el punto está dentro del triángulo, por ende, se pinta.

## Entrega

* Plazo: 2/6/19 a las 24h.
