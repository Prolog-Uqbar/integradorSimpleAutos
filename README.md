# Entrando a Boxes

**En las carreras, desde rally a fórmula 1, los autos requieren mantenimiento y reparaciones, antes e incluso durante la carrera.**


Contamos con la información de cada auto: su identificacion, la cantidad de combustible que tiene, la capacidad máxima del tanque y su nivel de seguridad. 
Tenemos información de los repuestos disponibles, de los que conocemos su descripción y su magnitud. 

A su vez, para cada auto se lleva el registro de cuándo se le colocó un determinado componente. (se expresa en cantidad de días desde que se adquirió el auto) 

Por ejemplo
* Al rayo mcQueen se le colocó un tanque de combustible el día 17 y una cubierta el dia 50.
* Al delorean se le colocó un condensador de flujo el dia 365
* Al troncomovil no se le colocó ningun repuesto


1. Se quiere averiguar cuáles de los repuestos disponibles en el taller, sería conveniente colocarle a alguno de los autos, lo cual depende de las siguientes condiciones.
* Si al auto se le coloco un componente con la misma descripción hace más de 100 días, conviene volver a cambiarlo. 
* A cualquier auto le conviene colocar un repuesto cuya magnitud sea exactamente 17 y no se le haya colocado anteriormente.
* A un auto con el tanque cargado en menos de la mitad de su capacidad máxima o que es inseguro, le conviene un repuesto que sea esencial. 

Complementarimente, se cuenta con información en la base de conocimiento de qué día es en la actualidad, cuáles son las descripciones de los repuestos escenciales, y cuál es el nivel de seguridad límite para considerar inseguro un auto.

2. Encontrar cada uno de los autos que tengan colocados:
* más de un componente.
* exactamente un componente.
* ningún componente

3. Averiguar cuales son los repuestos del taller que convendría colocar en todos los autos que se conocen. 

4. Garantizar que los predicados anteriores sean inversibles y justificar dicho concepto
