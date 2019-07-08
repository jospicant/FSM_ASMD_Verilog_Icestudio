{
  "version": "1.2",
  "package": {
    "name": "Next_State",
    "version": "1.0",
    "description": "Bloque combinacional donde se calcula el siguiente estado en función de las entradas y el estado actual",
    "author": "José Picó",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "16712921-3f02-489a-b173-1becb259ec08",
          "type": "basic.input",
          "data": {
            "name": "inA",
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
            "x": -56,
            "y": 72
          }
        },
        {
          "id": "7c2d1844-7541-4e30-8711-dd7aaf3b6633",
          "type": "basic.input",
          "data": {
            "name": "inB",
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
            "x": -56,
            "y": 224
          }
        },
        {
          "id": "07118187-90ac-45df-a96e-c9953e21680a",
          "type": "basic.output",
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
            "virtual": true
          },
          "position": {
            "x": 1096,
            "y": 224
          }
        },
        {
          "id": "09e2e2cf-6477-4f17-b770-95173b017101",
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
            "x": -56,
            "y": 376
          }
        },
        {
          "id": "eb2683d6-5ca7-4132-90d9-b4ae9c13df77",
          "type": "basic.code",
          "data": {
            "code": "\r\nreg[1:0] estado_siguiente=0;\r\n\r\nparameter E0=0,E1=1,E2=2,E3=3;   // 4 estados posibles\r\n\r\n//*********************************  Parte 1  ****************************************************************\r\n//Parte combinacional formada por procedimiento  \"always @( entradas y estado_actual )\" **********************\r\n//************************************************************************************************************\r\n\r\nalways @(inA,inB,estado_actual)\r\n\r\nbegin\r\n\r\n\tcase(estado_actual)\r\n\t\r\n\t\tE0:begin\r\n\t\t\tcase ({inA,inB})\r\n\t\t\t\t0:estado_siguiente=E0;\r\n\t\t\t\t1:estado_siguiente=E3;\r\n\t\t\t\t2:estado_siguiente=E1;\r\n\t\t\t\tdefault:estado_siguiente=E0;\r\n\t\t\tendcase\r\n\t\t   end\r\n\t\t   \r\n\t\tE1:begin\r\n\t\t\tcase ({inA,inB})\r\n\t\t\t\t0:estado_siguiente=E1;\r\n\t\t\t\t1:estado_siguiente=E2;\r\n\t\t\t\t2:estado_siguiente=E0;\r\n\t\t\t\tdefault:estado_siguiente=E1;\r\n\t\t\tendcase\r\n\t\t   end\r\n\t\t   \r\n\t\tE2:begin\r\n\t\t\tcase ({inA,inB})\r\n\t\t\t\t0:estado_siguiente=E2;\r\n\t\t\t\t1:estado_siguiente=E1;\r\n\t\t\t\t2:estado_siguiente=E3;\r\n\t\t\t\tdefault:estado_siguiente=E2;\r\n\t\t\tendcase\r\n\t\t   end\r\n\t\t   \r\n\t\tE3:begin\r\n\t\t\tcase ({inA,inB})\r\n\t\t\t\t0:estado_siguiente=E3;\r\n\t\t\t\t1:estado_siguiente=E0;\r\n\t\t\t\t2:estado_siguiente=E2;\r\n\t\t\t\tdefault:estado_siguiente=E3;\r\n\t\t\tendcase\r\n\t\t   end\r\n\t\t   \r\n\t\tdefault:estado_siguiente=E0;\r\n\t\t\r\n\tendcase\r\nend\r\n\r\n\r\n\r\n\r\n\r\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "inA"
                },
                {
                  "name": "inB"
                },
                {
                  "name": "estado_actual",
                  "range": "[1:0]",
                  "size": 2
                }
              ],
              "out": [
                {
                  "name": "estado_siguiente",
                  "range": "[1:0]",
                  "size": 2
                }
              ]
            }
          },
          "position": {
            "x": 184,
            "y": 24
          },
          "size": {
            "width": 752,
            "height": 464
          }
        },
        {
          "id": "f9c75878-1511-4264-aba4-b306a663e794",
          "type": "basic.info",
          "data": {
            "info": "\n## Circuito Combinacional.\n\nSe encargará de calcular hacia que estado evolucionará el sistema en función de los valores  \nde entrada y el estado actual en el que nos encontramos.\n\n **estado_siguiente = función ( entradas, estado_actual)**",
            "readonly": true
          },
          "position": {
            "x": 176,
            "y": -144
          },
          "size": {
            "width": 744,
            "height": 144
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "16712921-3f02-489a-b173-1becb259ec08",
            "port": "out"
          },
          "target": {
            "block": "eb2683d6-5ca7-4132-90d9-b4ae9c13df77",
            "port": "inA"
          }
        },
        {
          "source": {
            "block": "7c2d1844-7541-4e30-8711-dd7aaf3b6633",
            "port": "out"
          },
          "target": {
            "block": "eb2683d6-5ca7-4132-90d9-b4ae9c13df77",
            "port": "inB"
          }
        },
        {
          "source": {
            "block": "09e2e2cf-6477-4f17-b770-95173b017101",
            "port": "out"
          },
          "target": {
            "block": "eb2683d6-5ca7-4132-90d9-b4ae9c13df77",
            "port": "estado_actual"
          },
          "size": 2
        },
        {
          "source": {
            "block": "eb2683d6-5ca7-4132-90d9-b4ae9c13df77",
            "port": "estado_siguiente"
          },
          "target": {
            "block": "07118187-90ac-45df-a96e-c9953e21680a",
            "port": "in"
          },
          "size": 2
        }
      ]
    }
  },
  "dependencies": {}
}