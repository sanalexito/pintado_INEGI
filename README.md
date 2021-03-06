# pintado_INEGI

El Instituto Nacional de Estadística y Geografía (INEGI) tiene un código de colores para señalar la calidad estadística de las estimaciones que publican de acuerdo a sus coeficientes de variación (cvs). En 2016 se tenía que el color blanco se usaba para cvs menores al 15%; el color "cremita" aplicaba para aquellas estimaciones cuyos cvs están en el intervalo (15, 30] y un color "naranja" para las estimaciones con cvs mayores al 30%.

![colores_2016](https://user-images.githubusercontent.com/65984679/128230632-21968932-a5d2-4096-a17f-3121409cb013.jpg)

En 2017 se modificaron los intervalos para asignar el pintado, quedando como sigue:

* Blanco para estimaciones con cvs menores a 20%.
* Color "#FFEA00" para estimaciones con cvs en el intervalo (20, 30]
* Color "#FF5400" para estimaciones con cvs mayores al 30%.

![colores_2017](https://user-images.githubusercontent.com/65984679/128233777-aec9d8ed-118c-42ce-b600-f45f004e19f6.jpg)

Para pintar las estimaciones presento el código R, que usa las tablas publicadas por el INEGI de cvs y estimaciones, y regresa el tabulado de estimaciones pintado. Los datos usados corresponden a la Encuesta Nacional de Calidad e Impacto Gubernamental en Empresas (ENCRIGE) 2016. Modificando los intervalos correspondientes puede obtenerse el viejo o el nuevo pintado. En este caso se presenta el pintado más reciente y se incluye el archivo Excel para que pueda observarse el cambio.
