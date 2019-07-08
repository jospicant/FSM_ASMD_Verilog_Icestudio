{
  "version": "1.2",
  "package": {
    "name": "Qfsm",
    "version": "v1.0",
    "description": "Ejemplo de una máquina de estados tipo Moore creado desde Qfsm",
    "author": "José Picó",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "166d77bb-29b1-4504-b9ac-098f11e253e4",
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
            "x": 664,
            "y": 32
          }
        },
        {
          "id": "8627226c-f922-4e2d-a0cb-a1425837888d",
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
            "x": 656,
            "y": 216
          }
        },
        {
          "id": "96ece25e-b562-40da-8b78-1e92dc82b42a",
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
            "x": 1728,
            "y": 216
          }
        },
        {
          "id": "e128f20c-7612-4ef5-966c-52047fcdb201",
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
            "x": 656,
            "y": 400
          }
        },
        {
          "id": "440d0c0b-88be-4460-8a0c-6f5e4dfabcf1",
          "type": "basic.code",
          "data": {
            "code": "\n  reg[1:0]      moore=0;                 //Qfsm no ha puesto a 0 los registros\n  reg[1:0]      state=0, nextstate=0;\n\n  parameter E0 = 2'b00, E1 = 2'b01, E2 = 2'b10, E3 = 2'b11;\n\n  always @ (posedge clock) begin\n    if (reset)\n      begin\n        state <= E0;\n        moore <= 2'b00;\n      end                               //Qfsm había puesto un punto y coma aquí\n    else\n      begin\n        state <= nextstate;\n        case (nextstate)\n          E0:\n            moore <= 2'b00;\n          E1:\n            moore <= 2'b01;\n          E2:\n            moore <= 2'b10;\n          E3:\n            moore <= 2'b11;\n        endcase\n      end\n  end\n\n  always @ (reset or in or state) begin\n    if (reset)\n      nextstate = E0;\n    else begin\n      nextstate = state;\n      case (state)\n        E0:\n        begin\n          if (in==2'b10)\n          begin\n            nextstate = E1;\n          end\n          else if (in==2'b00)\n          begin\n          end\n          else if (in==2'b01)\n          begin\n            nextstate = E3;\n          end\n          else if (in==2'b11)\n          begin\n          end\n        end\n        E1:\n        begin\n          if (in==2'b10)\n          begin\n            nextstate = E0;\n          end\n          else if (in==2'b00)\n          begin\n          end\n          else if (in==2'b01)\n          begin\n            nextstate = E2;\n          end\n          else if (in==2'b11)\n          begin\n          end\n        end\n        E2:\n        begin\n          if (in==2'b01)\n          begin\n            nextstate = E1;\n          end\n          else if (in==2'b00)\n          begin\n          end\n          else if (in==2'b10)\n          begin\n            nextstate = E3;\n          end\n          else if (in==2'b11)\n          begin\n          end\n        end\n        E3:\n        begin\n          if (in==2'b10)\n          begin\n            nextstate = E2;\n          end\n          else if (in==2'b01)\n          begin\n            nextstate = E0;\n          end\n          else if (in==2'b00)\n          begin\n          end\n          else if (in==2'b11)\n          begin\n          end\n        end\n      endcase\n    end\n  end\n\n",
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
                  "name": "moore",
                  "range": "[1:0]",
                  "size": 2
                }
              ]
            }
          },
          "position": {
            "x": 856,
            "y": -32
          },
          "size": {
            "width": 768,
            "height": 552
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "166d77bb-29b1-4504-b9ac-098f11e253e4",
            "port": "out"
          },
          "target": {
            "block": "440d0c0b-88be-4460-8a0c-6f5e4dfabcf1",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "8627226c-f922-4e2d-a0cb-a1425837888d",
            "port": "out"
          },
          "target": {
            "block": "440d0c0b-88be-4460-8a0c-6f5e4dfabcf1",
            "port": "reset"
          }
        },
        {
          "source": {
            "block": "440d0c0b-88be-4460-8a0c-6f5e4dfabcf1",
            "port": "moore"
          },
          "target": {
            "block": "96ece25e-b562-40da-8b78-1e92dc82b42a",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "e128f20c-7612-4ef5-966c-52047fcdb201",
            "port": "out"
          },
          "target": {
            "block": "440d0c0b-88be-4460-8a0c-6f5e4dfabcf1",
            "port": "clock"
          }
        }
      ]
    }
  },
  "dependencies": {}
}