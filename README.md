# FSM_ASMD_Verilog_Icestudio
Maquinas de estado FSM (Moore,Mealy), ASMD en Verilog y usando Icestudio  

Vamos a intentar mostrar el diseño de máquinas de estado (FSM) tipo Moore, Mealy mediante el uso de descripción hardware HDL en verilog y aplicado a la herramienta libre Icestudio.

El objetivo es intentar ordenar y clarificar como se pueden crear máquinas de estado de forma fácil con verilog para poder desarrollar máquinas de estado que nos permitan realizar el control en un sistema digital (vamos, desarrollar nuestra parte inteligente que controla un sistema ).

Intentaremos llegar un poco más allá ( todo llevará su tiempo ) e intentaremos mostrar como diseñar un sistema digital, separando el diseño en dos partes, una "parte de control" ( la máquina de estados propiamente dicha ) y una "parte de datos", llamada "Datapath" que se encargará del manejo de los datos ( carga de registros, desplazamientos, operaciones aritméticas, traspaso de información de un registro a otro, etc... ), todo esto lo intentaremos plasmar en un "Flowchart" algo más avanzado que lo denominaremos ASMD, donde, ya no solo se representan los datos de la máquina de estado, ahora, sobre el  nuevo diagrama, se plasmarán tanto los estados como las señales de control que intervienen y los flujos de datos que se producirán en el sistema digital ante las reacciones de las señales enviadas/recibidas.

Todo esto se irá plasmando en la wiki conforme se avance en la documentación.

