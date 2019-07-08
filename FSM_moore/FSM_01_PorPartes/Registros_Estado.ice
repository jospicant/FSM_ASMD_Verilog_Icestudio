{
  "version": "1.2",
  "package": {
    "name": "Reg Estado",
    "version": "1.0",
    "description": "Almacena la información del estado en el que nos encontramos",
    "author": "José Picó",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "6551ba49-31a5-4ef6-ae54-7ddcd57e0acc",
          "type": "basic.input",
          "data": {
            "name": "estado_siguiente",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -72,
            "y": 104
          }
        },
        {
          "id": "f7115b7c-55b2-442f-8f2b-c1fc1fca4ce2",
          "type": "basic.input",
          "data": {
            "name": "reset",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -72,
            "y": 192
          }
        },
        {
          "id": "6dc04ea7-b81d-4e30-a010-cf40851ec550",
          "type": "basic.output",
          "data": {
            "name": "estado_actual",
            "range": "[1:0]",
            "pins": [
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1192,
            "y": 192
          }
        },
        {
          "id": "aedf04a2-5130-494f-9c8a-efa9637e1752",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": -72,
            "y": 280
          }
        },
        {
          "id": "908d56a3-09a3-4150-8e24-055a056f3157",
          "type": "basic.code",
          "data": {
            "code": "\nreg[1:0] estado_actual=0;\n\nparameter E0=0,E1=1,E2=2,E3=3;   // 4 estados posibles\n\n\n// ************************** Parte 2 *****************************************************\n// Parte secuencial, el estado_actual capturará el nuevo estado (estado_siguiente) ********\n// ****************************************************************************************\n\nalways @(posedge clk,posedge reset)\nbegin\n  if(reset) estado_actual<=E0;\n  else estado_actual <= estado_siguiente;\nend\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "estado_siguiente",
                  "range": "[1:0]",
                  "size": 2
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
                  "name": "estado_actual",
                  "range": "[1:0]",
                  "size": 2
                }
              ]
            }
          },
          "position": {
            "x": 200,
            "y": 96
          },
          "size": {
            "width": 816,
            "height": 256
          }
        },
        {
          "id": "c7e6c8ff-edee-4b92-be0f-592cf4ca6feb",
          "type": "basic.info",
          "data": {
            "info": "## Circuito Secuencial \nEste bloque, nos permite en cada ciclo de reloj almacenar el estado actual en el que nos encontramos.\nSerá un circuito secuencial formado por un conjunto de biestables D que serán los encargados de almacenar  \nla información del estado en el que nos encontramos.",
            "readonly": true
          },
          "position": {
            "x": 200,
            "y": -56
          },
          "size": {
            "width": 832,
            "height": 120
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "6551ba49-31a5-4ef6-ae54-7ddcd57e0acc",
            "port": "out"
          },
          "target": {
            "block": "908d56a3-09a3-4150-8e24-055a056f3157",
            "port": "estado_siguiente"
          },
          "size": 2
        },
        {
          "source": {
            "block": "f7115b7c-55b2-442f-8f2b-c1fc1fca4ce2",
            "port": "out"
          },
          "target": {
            "block": "908d56a3-09a3-4150-8e24-055a056f3157",
            "port": "reset"
          }
        },
        {
          "source": {
            "block": "aedf04a2-5130-494f-9c8a-efa9637e1752",
            "port": "out"
          },
          "target": {
            "block": "908d56a3-09a3-4150-8e24-055a056f3157",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "908d56a3-09a3-4150-8e24-055a056f3157",
            "port": "estado_actual"
          },
          "target": {
            "block": "6dc04ea7-b81d-4e30-a010-cf40851ec550",
            "port": "in"
          },
          "size": 2
        }
      ]
    }
  },
  "dependencies": {}
}