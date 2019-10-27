{
  "version": "1.2",
  "package": {
    "name": "fsm1always",
    "version": "v1.0",
    "description": "Ejemplo de una máquina de estados usando 1 always único",
    "author": "José Picó",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "53c83564-f92c-4767-bd9c-ab23eb9023a5",
          "type": "basic.input",
          "data": {
            "name": "A",
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
            "x": 592,
            "y": -40
          }
        },
        {
          "id": "cffcf932-1e6b-48ec-847e-9933fe999513",
          "type": "basic.output",
          "data": {
            "name": "O1",
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
            "x": 1632,
            "y": -24
          }
        },
        {
          "id": "59b9f823-22f8-4586-9d09-fd083d853bff",
          "type": "basic.input",
          "data": {
            "name": "B",
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
            "x": 592,
            "y": -8
          }
        },
        {
          "id": "de8c0753-a07c-4d39-bff6-a5ab83806582",
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
            "x": 592,
            "y": 32
          }
        },
        {
          "id": "3efd2a0e-495d-4717-b7f8-3718d3133aab",
          "type": "basic.output",
          "data": {
            "name": "O2",
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
            "x": 1632,
            "y": 48
          }
        },
        {
          "id": "06559b25-94e1-4cf2-aebb-895ecf5fb300",
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
            "clock": false
          },
          "position": {
            "x": 592,
            "y": 72
          }
        },
        {
          "id": "97541011-cb2f-41b3-a165-f528e7a7f678",
          "type": "basic.info",
          "data": {
            "info": "\nMódulo formado por la importación de un módulo verilog desde su fichero *.v (01_fsm1always.v)\n\nSe instancia el módulo para crear nuestro módulo.",
            "readonly": false
          },
          "position": {
            "x": 600,
            "y": -176
          },
          "size": {
            "width": 1136,
            "height": 112
          }
        },
        {
          "id": "7b5469f0-4314-47ee-8a99-f7bda647a7c5",
          "type": "basic.code",
          "data": {
            "code": "\n\n//@include 01_fsm1always.v\n\nmy_fsm1always  miMaquina(.clk(clk),.reset(reset),.inA(A),.inB(B),.OutA(O1),.OutB(O2));",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "A"
                },
                {
                  "name": "B"
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
                  "name": "O1"
                },
                {
                  "name": "O2"
                }
              ]
            }
          },
          "position": {
            "x": 848,
            "y": -24
          },
          "size": {
            "width": 728,
            "height": 136
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "7b5469f0-4314-47ee-8a99-f7bda647a7c5",
            "port": "O1"
          },
          "target": {
            "block": "cffcf932-1e6b-48ec-847e-9933fe999513",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7b5469f0-4314-47ee-8a99-f7bda647a7c5",
            "port": "O2"
          },
          "target": {
            "block": "3efd2a0e-495d-4717-b7f8-3718d3133aab",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "53c83564-f92c-4767-bd9c-ab23eb9023a5",
            "port": "out"
          },
          "target": {
            "block": "7b5469f0-4314-47ee-8a99-f7bda647a7c5",
            "port": "A"
          }
        },
        {
          "source": {
            "block": "59b9f823-22f8-4586-9d09-fd083d853bff",
            "port": "out"
          },
          "target": {
            "block": "7b5469f0-4314-47ee-8a99-f7bda647a7c5",
            "port": "B"
          }
        },
        {
          "source": {
            "block": "de8c0753-a07c-4d39-bff6-a5ab83806582",
            "port": "out"
          },
          "target": {
            "block": "7b5469f0-4314-47ee-8a99-f7bda647a7c5",
            "port": "reset"
          }
        },
        {
          "source": {
            "block": "06559b25-94e1-4cf2-aebb-895ecf5fb300",
            "port": "out"
          },
          "target": {
            "block": "7b5469f0-4314-47ee-8a99-f7bda647a7c5",
            "port": "clk"
          }
        }
      ]
    }
  },
  "dependencies": {}
}