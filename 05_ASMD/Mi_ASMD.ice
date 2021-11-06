{
  "version": "1.2",
  "package": {
    "name": "Mi_ASMD",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "02d32f9c-dc3a-4b3c-8c8b-d33bb17ce37c",
          "type": "basic.input",
          "data": {
            "name": "n",
            "range": "[2:0]",
            "pins": [
              {
                "index": "2",
                "name": "",
                "value": ""
              },
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
            "x": 8,
            "y": 72
          }
        },
        {
          "id": "2c8f594d-77f5-4dbd-80b9-1c6ccc8e277a",
          "type": "basic.output",
          "data": {
            "name": "INICIA_T1",
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
            "x": 976,
            "y": 80
          }
        },
        {
          "id": "9a801e87-3dbc-4846-b9b3-6ee3a8296475",
          "type": "basic.input",
          "data": {
            "name": "FIN_T1",
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
            "y": 208
          }
        },
        {
          "id": "62fac2d4-4ab4-4cd1-a187-808b7a02fbde",
          "type": "basic.output",
          "data": {
            "name": "RESET_N",
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
            "x": 976,
            "y": 248
          }
        },
        {
          "id": "0dc20918-c982-4a88-8d1f-0174779613a0",
          "type": "basic.input",
          "data": {
            "name": "START",
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
            "x": 8,
            "y": 344
          }
        },
        {
          "id": "95fe4a31-3066-45dc-8798-6bcbe69352d4",
          "type": "basic.output",
          "data": {
            "name": "INC_N",
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
            "x": 992,
            "y": 416
          }
        },
        {
          "id": "ed9baa20-6f50-4320-896b-fa307faeb8c0",
          "type": "basic.input",
          "data": {
            "name": "DATO_TX",
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
            "y": 480
          }
        },
        {
          "id": "7b0d7769-af45-4251-b914-d6da9dec1adb",
          "type": "basic.output",
          "data": {
            "name": "LOAD_DATO",
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
            "x": 1000,
            "y": 576
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
            "x": 24,
            "y": 616
          }
        },
        {
          "id": "617e3515-c094-4553-b598-332c2603c203",
          "type": "basic.output",
          "data": {
            "name": "TX_DATO",
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
            "x": 992,
            "y": 744
          }
        },
        {
          "id": "0e639aef-79ef-4d9d-bfb9-062c9e198087",
          "type": "basic.input",
          "data": {
            "name": "clk",
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
            "x": 32,
            "y": 752
          }
        },
        {
          "id": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
          "type": "basic.code",
          "data": {
            "code": "\nparameter [1:0] S0=0,S1=1,S2=2,S3=3;\n\nreg INICIA_T1=0,RESET_N=0,INC_N=0, LOAD_DATO=0,TX_DATO=0;\n\nreg [1:0]  estadoActual=0, estadoNext=0;\n\n// bloque secuencial. Capturar estado Actual\nalways @(posedge clk or posedge reset)\nif(reset) estadoActual <= S0;\nelse estadoActual <= estadoNext;\n\n// Bloque combinacional. Calculamos estado siguiente y valor de las\n// salidas en función de las entradas y del estado.\nalways @(*)  // * para todas\nbegin\n  //valores por defecto\n  INICIA_T1    = 0;\n  RESET_N      = 0;\n  INC_N        = 0;\n  LOAD_DATO    = 0;\n  TX_DATO      = 0;\n  estadoNext   = 'bx; //Depuración\n  \n  case(estadoActual)\n     S0:begin                                   RESET_N=1;\n        if(START)         estadoNext = S1;\n        else              estadoNext = S0;\n        end\n     S1:begin\n                                                INICIA_T1 = 1'b1;\n        if(FIN_T1) begin                        LOAD_DATO = 1'b1;\n                          estadoNext = S2; end\n        else              estadoNext = S1;\n        end\n     S2:begin\n        if (n >= 4) begin                         RESET_N = 1'b1;\n                          estadoNext = S0; end\n        else begin                                TX_DATO = 1'b1;\n                          estadoNext = S3; end\n        end                  \n     S3: if(DATO_TX)      estadoNext = S3;\n         else begin                               INC_N   = 1'b1;\n                          estadoNext = S1; end\n     default:             estadoNext = S0;\n   endcase\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "n",
                  "range": "[2:0]",
                  "size": 3
                },
                {
                  "name": "FIN_T1"
                },
                {
                  "name": "START"
                },
                {
                  "name": "DATO_TX"
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
                  "name": "INICIA_T1"
                },
                {
                  "name": "RESET_N"
                },
                {
                  "name": "INC_N"
                },
                {
                  "name": "LOAD_DATO"
                },
                {
                  "name": "TX_DATO"
                }
              ]
            }
          },
          "position": {
            "x": 200,
            "y": 32
          },
          "size": {
            "width": 696,
            "height": 824
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "02d32f9c-dc3a-4b3c-8c8b-d33bb17ce37c",
            "port": "out"
          },
          "target": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "n"
          },
          "size": 3
        },
        {
          "source": {
            "block": "9a801e87-3dbc-4846-b9b3-6ee3a8296475",
            "port": "out"
          },
          "target": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "FIN_T1"
          }
        },
        {
          "source": {
            "block": "0dc20918-c982-4a88-8d1f-0174779613a0",
            "port": "out"
          },
          "target": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "START"
          }
        },
        {
          "source": {
            "block": "ed9baa20-6f50-4320-896b-fa307faeb8c0",
            "port": "out"
          },
          "target": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "DATO_TX"
          }
        },
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
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "INICIA_T1"
          },
          "target": {
            "block": "2c8f594d-77f5-4dbd-80b9-1c6ccc8e277a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "RESET_N"
          },
          "target": {
            "block": "62fac2d4-4ab4-4cd1-a187-808b7a02fbde",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "INC_N"
          },
          "target": {
            "block": "95fe4a31-3066-45dc-8798-6bcbe69352d4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "LOAD_DATO"
          },
          "target": {
            "block": "7b0d7769-af45-4251-b914-d6da9dec1adb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7e52b2d8-2f3e-4ff7-9132-8522fe65163b",
            "port": "TX_DATO"
          },
          "target": {
            "block": "617e3515-c094-4553-b598-332c2603c203",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}