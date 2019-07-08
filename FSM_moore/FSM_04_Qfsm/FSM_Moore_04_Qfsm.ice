{
  "version": "1.2",
  "package": {
    "name": "@includeFSM",
    "version": "1.0",
    "description": "Creación de un máquina FSM desde Qfsm y usando @include en Icestudio ",
    "author": "José Picó",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "ff950b4b-5abe-4452-9f25-743082ab8924",
          "type": "basic.input",
          "data": {
            "name": "in",
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
            "x": 16,
            "y": 216
          }
        },
        {
          "id": "5a923b91-b1ac-4658-a96e-8d650d49bf25",
          "type": "basic.output",
          "data": {
            "name": "state",
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
            "x": 1008,
            "y": 224
          }
        },
        {
          "id": "1aae23b0-d36d-465d-b461-4ba82ef3da1a",
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
            "x": 16,
            "y": 256
          }
        },
        {
          "id": "8fb33c28-6324-44b5-9e15-a56e448c13e8",
          "type": "basic.output",
          "data": {
            "name": "moore",
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
            "x": 1008,
            "y": 280
          }
        },
        {
          "id": "7881e697-4ea4-4c0c-8d7f-8b1ef93ce975",
          "type": "basic.input",
          "data": {
            "name": "clock",
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
            "x": 16,
            "y": 296
          }
        },
        {
          "id": "c255dbf4-33d4-4cd0-ac06-2c251871b23a",
          "type": "basic.code",
          "data": {
            "code": "\n//@include FPGA_01.v\n\nFPGA_01  MiMaquina(.in(in),.reset(reset),.clock(clock),.state(state),.moore(moore));",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[1:0]",
                  "size": 2
                },
                {
                  "name": "reset"
                },
                {
                  "name": "clock"
                }
              ],
              "out": [
                {
                  "name": "state",
                  "range": "[1:0]",
                  "size": 2
                },
                {
                  "name": "moore",
                  "range": "[1:0]",
                  "size": 2
                }
              ]
            }
          },
          "position": {
            "x": 200,
            "y": 224
          },
          "size": {
            "width": 720,
            "height": 120
          }
        },
        {
          "id": "3ecd0ddc-351f-4ff1-9883-722abbccf555",
          "type": "basic.info",
          "data": {
            "info": "\nCreamos nuestra máquina de estados finitos, creando una bloque de código, donde se instancia al módulo \"FPGA_01\" creado de la exportación  \ndel diagrama de estados creado en el programa \"Qfsm\". Usaremos este módulo para probar nuestra máquina en un ejemplo añadiendo los botones  \nde entrada y los diodos donde visualizaremos la salida.",
            "readonly": true
          },
          "position": {
            "x": 104,
            "y": 120
          },
          "size": {
            "width": 1104,
            "height": 112
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "ff950b4b-5abe-4452-9f25-743082ab8924",
            "port": "out"
          },
          "target": {
            "block": "c255dbf4-33d4-4cd0-ac06-2c251871b23a",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "1aae23b0-d36d-465d-b461-4ba82ef3da1a",
            "port": "out"
          },
          "target": {
            "block": "c255dbf4-33d4-4cd0-ac06-2c251871b23a",
            "port": "reset"
          }
        },
        {
          "source": {
            "block": "7881e697-4ea4-4c0c-8d7f-8b1ef93ce975",
            "port": "out"
          },
          "target": {
            "block": "c255dbf4-33d4-4cd0-ac06-2c251871b23a",
            "port": "clock"
          }
        },
        {
          "source": {
            "block": "c255dbf4-33d4-4cd0-ac06-2c251871b23a",
            "port": "state"
          },
          "target": {
            "block": "5a923b91-b1ac-4658-a96e-8d650d49bf25",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "c255dbf4-33d4-4cd0-ac06-2c251871b23a",
            "port": "moore"
          },
          "target": {
            "block": "8fb33c28-6324-44b5-9e15-a56e448c13e8",
            "port": "in"
          },
          "size": 2
        }
      ]
    }
  },
  "dependencies": {}
}