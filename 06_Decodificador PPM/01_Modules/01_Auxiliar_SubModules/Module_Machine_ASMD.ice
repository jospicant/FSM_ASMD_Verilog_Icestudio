{
  "version": "1.2",
  "package": {
    "name": "Deco_PPM_8",
    "version": "1.0",
    "description": "Decodificador PPM 8 canales",
    "author": "jospicant",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "2c8f594d-77f5-4dbd-80b9-1c6ccc8e277a",
          "type": "basic.output",
          "data": {
            "name": "CH1",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1464,
            "y": 72
          }
        },
        {
          "id": "5ff651d7-e6bb-492f-90ab-26a6b42ce929",
          "type": "basic.input",
          "data": {
            "name": "InPPM_neg",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 24,
            "y": 192
          }
        },
        {
          "id": "62fac2d4-4ab4-4cd1-a187-808b7a02fbde",
          "type": "basic.output",
          "data": {
            "name": "CH2",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1472,
            "y": 208
          }
        },
        {
          "id": "95fe4a31-3066-45dc-8798-6bcbe69352d4",
          "type": "basic.output",
          "data": {
            "name": "CH3",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1480,
            "y": 352
          }
        },
        {
          "id": "7b0d7769-af45-4251-b914-d6da9dec1adb",
          "type": "basic.output",
          "data": {
            "name": "CH4",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1480,
            "y": 496
          }
        },
        {
          "id": "d4ed1ce5-d705-4d1b-86d9-669e40fae528",
          "type": "basic.input",
          "data": {
            "name": "reset",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 16,
            "y": 568
          }
        },
        {
          "id": "426452e4-ec10-4208-b245-679245f7a976",
          "type": "basic.output",
          "data": {
            "name": "CH5",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1480,
            "y": 632
          }
        },
        {
          "id": "cd4ca001-3342-4fc5-a29e-5943630c4cf7",
          "type": "basic.output",
          "data": {
            "name": "CH6",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1480,
            "y": 776
          }
        },
        {
          "id": "78ff8721-4adb-4990-b52a-6196fe1509bb",
          "type": "basic.output",
          "data": {
            "name": "CH7",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1488,
            "y": 920
          }
        },
        {
          "id": "0e639aef-79ef-4d9d-bfb9-062c9e198087",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 24,
            "y": 944
          }
        },
        {
          "id": "c65c21fb-cb4a-4deb-a2ff-adcf8bffb9a8",
          "type": "basic.output",
          "data": {
            "name": "CH8",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1480,
            "y": 1056
          }
        },
        {
          "id": "6dc21481-e20a-476d-bd4c-a1a83f7462f2",
          "type": "basic.info",
          "data": {
            "info": "## Máquina de estados para decodificar 8 canales PPM con la entrada PPM invertida.\n* Por **InPPM_neg** recibimos los pulsos PPM en modo invertido ( la tramsmisión en modo invertido es más eficaz)\n* Por el pin **reset** podemos volver al estado inicial \n* **clk** reloj del sistema\n* Por los pines de salida **CH1, CH2, CH3, CH4, CH5, CH6, CH7 y CH8** obtenemos la señal decodificada de cada canal que será un pulso de amplitud equivalente al tiempo entre dos pulsos PPM. valor entre 0.2-0.3 ms a unos 2.2-2.3 ms que puede atacar a un servo.  \n* (Estos valores dependen del servo)",
            "readonly": true
          },
          "position": {
            "x": -120,
            "y": 1208
          },
          "size": {
            "width": 2024,
            "height": 144
          }
        },
        {
          "id": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
          "type": "basic.code",
          "data": {
            "code": "\nparameter [3:0] S0=0, S1=1, S2=2, S3=3, S4=4, S5=5, S6=6, S7=7, S8=8;              //Poner nombres a los estados\n\nreg Ch1=0, Ch2=0, Ch3=0, Ch4=0, Ch5=0, Ch6=0, Ch7=0, Ch8=0;                        //Inicializo canales\n\nreg [3:0]  estadoActual=0, estadoNext=0;                                           //Inicializo estados\n\n// bloque secuencial. Capturar estado Actual\n\nalways @(posedge clk )\nif(reset) estadoActual <= S0; \nelse estadoActual <= estadoNext;\n\n// Bloque combinacional. Calculamos estado siguiente y valor de las\n// salidas en función de las entradas y del estado actual.\n\nalways @(reset or InPPM_neg or estadoActual)  //  estado siguiente = función ( entradas y estado actual)\nbegin\n  //valores por defecto. justo antes del case pongo valores por defecto y en el case solo cambiamos\n  //la salida que se ve afectada y las demás tomarán los valores por defecto\n  Ch1   = 0;   Ch2   = 0;   Ch3   = 0;   Ch4   = 0; \n  Ch5   = 0;   Ch6   = 0;   Ch7   = 0;   Ch8   = 0;\n  estadoNext   = 'bx; \n  \n  case(estadoActual)  //Evaluación del estado actual\n     S0:begin                                   \n        if( InPPM_neg  )  begin   estadoNext = S1;   Ch1 = 1'b1;   end \n        else                      estadoNext = S0;  \n        end\n     S1:begin                                   \n        if( InPPM_neg  )  begin   estadoNext = S2;   Ch2 = 1'b1;   end \n        else              begin   estadoNext = S1;   Ch1 = 1'b1;   end\n        end\n     S2:begin                                   \n        if( InPPM_neg  )  begin   estadoNext = S3;   Ch3 = 1'b1;   end \n        else              begin   estadoNext = S2;   Ch2 = 1'b1;   end\n        end\n     S3:begin                                   \n        if( InPPM_neg  )  begin   estadoNext = S4;   Ch4 = 1'b1;   end \n        else              begin   estadoNext = S3;   Ch3 = 1'b1;   end\n        end\n     S4:begin                                   \n        if( InPPM_neg  )  begin   estadoNext = S5;   Ch5 = 1'b1;   end \n        else              begin   estadoNext = S4;   Ch4 = 1'b1;   end\n        end\n     S5:begin                                   \n        if( InPPM_neg  )  begin   estadoNext = S6;   Ch6 = 1'b1;   end \n        else              begin   estadoNext = S5;   Ch5 = 1'b1;   end\n        end\n     S6:begin                                   \n        if( InPPM_neg  )  begin   estadoNext = S7;   Ch7 = 1'b1;   end \n        else              begin   estadoNext = S6;   Ch6 = 1'b1;   end\n        end\n     S7:begin                                   \n        if( InPPM_neg  )  begin   estadoNext = S8;   Ch8 = 1'b1;   end \n        else              begin   estadoNext = S7;   Ch7 = 1'b1;   end\n        end\n     S8:begin                                   \n        if( InPPM_neg  )          estadoNext = S0;\n        else              begin   estadoNext = S8;   Ch8 = 1'b1;  end\n        end\n     default:                     estadoNext = S0;\n   endcase\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "InPPM_neg"
                },
                {
                  "name": "reset"
                },
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "Ch1"
                },
                {
                  "name": "Ch2"
                },
                {
                  "name": "Ch3"
                },
                {
                  "name": "Ch4"
                },
                {
                  "name": "Ch5"
                },
                {
                  "name": "Ch6"
                },
                {
                  "name": "Ch7"
                },
                {
                  "name": "Ch8"
                }
              ]
            }
          },
          "position": {
            "x": 208,
            "y": 32
          },
          "size": {
            "width": 1168,
            "height": 1128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d4ed1ce5-d705-4d1b-86d9-669e40fae528",
            "port": "out"
          },
          "target": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "reset"
          }
        },
        {
          "source": {
            "block": "0e639aef-79ef-4d9d-bfb9-062c9e198087",
            "port": "out"
          },
          "target": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "5ff651d7-e6bb-492f-90ab-26a6b42ce929",
            "port": "out"
          },
          "target": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "InPPM_neg"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "Ch1"
          },
          "target": {
            "block": "2c8f594d-77f5-4dbd-80b9-1c6ccc8e277a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "Ch2"
          },
          "target": {
            "block": "62fac2d4-4ab4-4cd1-a187-808b7a02fbde",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "Ch3"
          },
          "target": {
            "block": "95fe4a31-3066-45dc-8798-6bcbe69352d4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "Ch4"
          },
          "target": {
            "block": "7b0d7769-af45-4251-b914-d6da9dec1adb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "Ch5"
          },
          "target": {
            "block": "426452e4-ec10-4208-b245-679245f7a976",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "Ch6"
          },
          "target": {
            "block": "cd4ca001-3342-4fc5-a29e-5943630c4cf7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "Ch7"
          },
          "target": {
            "block": "78ff8721-4adb-4990-b52a-6196fe1509bb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "Ch8"
          },
          "target": {
            "block": "c65c21fb-cb4a-4deb-a2ff-adcf8bffb9a8",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}