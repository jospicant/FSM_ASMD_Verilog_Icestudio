{
  "version": "1.2",
  "package": {
    "name": "Salida_Moore",
    "version": "1.0",
    "description": "Salida  = función ( estado_actual)",
    "author": "José Picó",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "4a628683-a693-4033-beec-7271cad6ea71",
          "type": "basic.output",
          "data": {
            "name": "OutA",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1400,
            "y": 192
          }
        },
        {
          "id": "13f08783-448b-4310-bd5f-4aa7c58e3873",
          "type": "basic.input",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 184,
            "y": 272
          }
        },
        {
          "id": "0eced1f1-cfa9-4495-8a34-0ec0d3311fc0",
          "type": "basic.output",
          "data": {
            "name": "OutB",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1400,
            "y": 352
          }
        },
        {
          "id": "4b1da2a2-3484-4fb5-a7ab-9c01d8a7b366",
          "type": "basic.code",
          "data": {
            "code": "\nreg OutA=0,OutB=0;\nparameter E0=0,E1=1,E2=2,E3=3;   // 4 estados posibles\n\n\n// **********************  Parte 3 (3a) ************************************************************\n// Parte combinacional, se asigna un valor de salida en función del estado en el que nos encontramos\n//**************************************************************************************************\n\nalways @(estado_actual)\nbegin\n\tcase(estado_actual)\n\t  E0:{OutA,OutB}=0;\n\t  E1:{OutA,OutB}=1;\n\t  E2:{OutA,OutB}=2;\n\t  E3:{OutA,OutB}=3;\n\t  default: {OutA,OutB}=0;\n\tendcase\nend\n\n\n\n\n\n\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "estado_actual",
                  "range": "[1:0]",
                  "size": 2
                }
              ],
              "out": [
                {
                  "name": "OutA"
                },
                {
                  "name": "OutB"
                }
              ]
            }
          },
          "position": {
            "x": 424,
            "y": 144
          },
          "size": {
            "width": 888,
            "height": 320
          }
        },
        {
          "id": "d389603c-b000-4537-9524-c472612d2a7b",
          "type": "basic.info",
          "data": {
            "info": "\n## Bloque de Salida Moore.\n**Circuito Combinacional** donde obtenemos la salida en función del estado actual en el que  \nnos encontramos.\n\n  **Salida = función(estado_actual)**",
            "readonly": true
          },
          "position": {
            "x": 432,
            "y": -24
          },
          "size": {
            "width": 896,
            "height": 120
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "13f08783-448b-4310-bd5f-4aa7c58e3873",
            "port": "out"
          },
          "target": {
            "block": "4b1da2a2-3484-4fb5-a7ab-9c01d8a7b366",
            "port": "estado_actual"
          },
          "size": 2
        },
        {
          "source": {
            "block": "4b1da2a2-3484-4fb5-a7ab-9c01d8a7b366",
            "port": "OutA"
          },
          "target": {
            "block": "4a628683-a693-4033-beec-7271cad6ea71",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4b1da2a2-3484-4fb5-a7ab-9c01d8a7b366",
            "port": "OutB"
          },
          "target": {
            "block": "0eced1f1-cfa9-4495-8a34-0ec0d3311fc0",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}