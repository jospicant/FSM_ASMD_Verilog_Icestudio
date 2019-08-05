{
  "version": "1.2",
  "package": {
    "name": "FSM EstiloA",
    "version": "1.0",
    "description": "FSM creando 2 always ( estiloA)",
    "author": "José Picó ( Basado en paper del SNUG-2003  de Clifford E.Cummings )",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "f9d9f7bc-dbfe-4619-ac88-b03ebec75133",
          "type": "basic.input",
          "data": {
            "name": "go",
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
            "x": 32,
            "y": 200
          }
        },
        {
          "id": "aed44529-a904-4866-92a0-eb92835f25b0",
          "type": "basic.output",
          "data": {
            "name": "rd",
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
            "x": 1192,
            "y": 288
          }
        },
        {
          "id": "17e63db0-ad13-4c89-809d-6ad4e233030d",
          "type": "basic.input",
          "data": {
            "name": "ws",
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
            "x": 40,
            "y": 368
          }
        },
        {
          "id": "ee9f12f0-04a3-441d-bc18-5847e4904cb3",
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
            "x": 32,
            "y": 560
          }
        },
        {
          "id": "c5830748-cf2e-4dfe-84ea-65695d4d3176",
          "type": "basic.output",
          "data": {
            "name": "ds",
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
            "x": 1200,
            "y": 648
          }
        },
        {
          "id": "e3602dee-3850-419a-849c-93e7fea86d66",
          "type": "basic.input",
          "data": {
            "name": "rst_n",
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
            "x": 24,
            "y": 736
          }
        },
        {
          "id": "53373c39-7dae-4f3b-a6a5-9ed494a546f8",
          "type": "basic.code",
          "data": {
            "code": "\r\nreg rd,ds;\r\n\r\nparameter IDLE = 2'b00,\r\n          READ = 2'b01,\r\n          DLY  = 2'b11,\r\n          DONE = 2'b10;\r\n\r\nreg[1:0] state,next;\r\n\r\n// Bloque secuencial. Biestables que se encargarán de memorizar el estado en el que nos encontramos\r\n//*************************************************************************************************   \r\nalways @(posedge clk or negedge rst_n)\r\n\tif(!rst_n) state <=IDLE;\r\n\telse       state <=next;\r\n\r\n\r\n// Bloque combinacional. Juntamos los dos bloques combinacionales en un único bloque always\r\n//******************************************************************************************\r\nalways @(state or go or ws) begin\r\n\t\r\n\tnext =  'bx;             //estado next por defecto \r\n\trd   = 1'b0;             // valores de salida por defecto  rd=0 ds=0\r\n\tds   = 1'b0; \r\n\r\n\tcase (state)\r\n\t\tIDLE: if (go)       next = READ;     //para cada estado definimos tanto las salidas como el próximo estado\r\n\t\t      else          next = IDLE;\r\n\t\tREAD: begin\r\n\t\t            rd=1'b1; \r\n\t\t                    next = DLY;\r\n\r\n\t\t      end\r\n\t\tDLY:  begin\r\n\t\t            rd=1'b1;\r\n\t\t          if(!ws)   next = DONE;\r\n\t\t          else      next = READ;\r\n\t\t      end\r\n\t\tDONE: begin\r\n\t\t            ds=1'b1;\r\n\t\t                    next = IDLE;\r\n\t\t      end\r\n\tendcase\r\nend\r\n\r\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "go"
                },
                {
                  "name": "ws"
                },
                {
                  "name": "clk"
                },
                {
                  "name": "rst_n"
                }
              ],
              "out": [
                {
                  "name": "rd"
                },
                {
                  "name": "ds"
                }
              ]
            }
          },
          "position": {
            "x": 208,
            "y": 144
          },
          "size": {
            "width": 944,
            "height": 712
          }
        },
        {
          "id": "ee66b244-b769-4743-a8ca-8d904bfbbeb2",
          "type": "basic.info",
          "data": {
            "info": "\n![FSM](https://raw.githubusercontent.com/jospicant/FSM_ASMD_Verilog_Icestudio/master/02_FSM_Styles/imagenes/03_fsm.jpg)  \n\n![Bloques](https://raw.githubusercontent.com/jospicant/FSM_ASMD_Verilog_Icestudio/master/02_FSM_Styles/imagenes/04_estiloA.jpg)  \n",
            "readonly": true
          },
          "position": {
            "x": 1328,
            "y": -48
          },
          "size": {
            "width": 552,
            "height": 160
          }
        },
        {
          "id": "29a44435-e2d9-4a67-a536-14d5b578b654",
          "type": "basic.info",
          "data": {
            "info": "## Codificación de una máquina de estado FSM. ( 2 ALWAYS )\nAquí vemos un ejemplo de como se puede codificar una máquina de estado usando un buen estilo.  \nEl diagrama de bloques de una máquina de estado Moore lo codificacmos usando 2 bloques always.  \n 1 bloque always ( secuencial). Se captura el estado actual.\n 1 bloque always (combinacional) donde se unifican tanto el bloque combinacional que calcula el nuevo estado como  \n el bloque combinacional que nos genera la salida en función del estado en el que nos encontramos (Moore).\n",
            "readonly": true
          },
          "position": {
            "x": 232,
            "y": -64
          },
          "size": {
            "width": 1040,
            "height": 160
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "f9d9f7bc-dbfe-4619-ac88-b03ebec75133",
            "port": "out"
          },
          "target": {
            "block": "53373c39-7dae-4f3b-a6a5-9ed494a546f8",
            "port": "go"
          }
        },
        {
          "source": {
            "block": "17e63db0-ad13-4c89-809d-6ad4e233030d",
            "port": "out"
          },
          "target": {
            "block": "53373c39-7dae-4f3b-a6a5-9ed494a546f8",
            "port": "ws"
          }
        },
        {
          "source": {
            "block": "ee9f12f0-04a3-441d-bc18-5847e4904cb3",
            "port": "out"
          },
          "target": {
            "block": "53373c39-7dae-4f3b-a6a5-9ed494a546f8",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "e3602dee-3850-419a-849c-93e7fea86d66",
            "port": "out"
          },
          "target": {
            "block": "53373c39-7dae-4f3b-a6a5-9ed494a546f8",
            "port": "rst_n"
          }
        },
        {
          "source": {
            "block": "53373c39-7dae-4f3b-a6a5-9ed494a546f8",
            "port": "rd"
          },
          "target": {
            "block": "aed44529-a904-4866-92a0-eb92835f25b0",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "53373c39-7dae-4f3b-a6a5-9ed494a546f8",
            "port": "ds"
          },
          "target": {
            "block": "c5830748-cf2e-4dfe-84ea-65695d4d3176",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}