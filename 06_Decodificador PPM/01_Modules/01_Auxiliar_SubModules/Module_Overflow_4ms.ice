{
  "version": "1.2",
  "package": {
    "name": "Overflow_4ms",
    "version": "1.0",
    "description": "Contador Reset y overflow a los 4ms",
    "author": "jospicant",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "743b5299-2d89-4783-b7c9-12a5b36df406",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 192,
            "y": 128
          }
        },
        {
          "id": "18e951b0-7223-49d8-b745-8175d90bffc7",
          "type": "basic.output",
          "data": {
            "name": "ov",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 816,
            "y": 176
          }
        },
        {
          "id": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 192,
            "y": 232
          }
        },
        {
          "id": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
          "type": "basic.code",
          "data": {
            "code": "\nreg [15:0] qi = 0;\n\nalways @(posedge clk)\n  if (rst | ov)  qi <= 0;\n  else           qi <= qi + 1;\n      \n//-- Comprobar overflow\nassign ov = (qi == 48000 );\n    ",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "rst"
                },
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "ov"
                }
              ]
            }
          },
          "position": {
            "x": 368,
            "y": 104
          },
          "size": {
            "width": 384,
            "height": 208
          }
        },
        {
          "id": "71563485-f2a0-45bd-8e66-bb9a15038449",
          "type": "basic.info",
          "data": {
            "info": "**Producirá un pulso de overflow cuando alcance los 48000 conteos** . \n**48000** conteos a 12Mhz equivaldrán a **4 ms**.",
            "readonly": false
          },
          "position": {
            "x": 360,
            "y": 344
          },
          "size": {
            "width": 696,
            "height": 96
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "c90da543-4b9c-4f4c-a5fa-7e1166ee1dd3",
            "port": "out"
          },
          "target": {
            "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "743b5299-2d89-4783-b7c9-12a5b36df406",
            "port": "out"
          },
          "target": {
            "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "e5d5eb54-41fb-40de-908c-b1fe9b2ec085",
            "port": "ov"
          },
          "target": {
            "block": "18e951b0-7223-49d8-b745-8175d90bffc7",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}