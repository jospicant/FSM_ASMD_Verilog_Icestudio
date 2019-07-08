{
  "version": "1.2",
  "package": {
    "name": "Mi FSM",
    "version": "1.0",
    "description": "Máquina FSM por bloques representativos",
    "author": "José Picó",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "cc1ed6e0-169a-415b-9c31-5dc53432e136",
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
            "x": 104,
            "y": 192
          }
        },
        {
          "id": "9aa61e1e-79aa-492b-a513-16f4a5ebbe9d",
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
            "x": 104,
            "y": 240
          }
        },
        {
          "id": "19dbd6b9-8c3e-49b7-8f5a-017d5a72df1e",
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
            "x": 1248,
            "y": 280
          }
        },
        {
          "id": "8f5ae0c4-d1e6-4003-8618-0621f4b8cbca",
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
            "x": 1248,
            "y": 320
          }
        },
        {
          "id": "67b2ada7-8fd9-4e8b-bb52-7a3ee5e37047",
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
            "x": 112,
            "y": 504
          }
        },
        {
          "id": "74d2779b-428d-4098-98e9-8ea0819659bc",
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
            "x": 112,
            "y": 560
          }
        },
        {
          "id": "1875e26b-1fb4-45ea-8ad4-9a9ff558e4cb",
          "type": "8a5de6f26ea9a4f1eef07fc71f31874bc984085f",
          "position": {
            "x": 320,
            "y": 248
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "5b33a541-96cc-4247-9d66-83208be37b7e",
          "type": "1c8148ac570eb07a67ea8a972f065541a235f33a",
          "position": {
            "x": 712,
            "y": 280
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "64af1f27-34a7-439d-874d-01072a03da66",
          "type": "d013f25035b2b74c04f4f1e8f081aa056d585607",
          "position": {
            "x": 1064,
            "y": 296
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "a64069ae-cfcd-43df-a858-d560fb0b313f",
          "type": "basic.info",
          "data": {
            "info": "\n## Mi máquina Moore representada por bloques.",
            "readonly": true
          },
          "position": {
            "x": 568,
            "y": 152
          },
          "size": {
            "width": 488,
            "height": 80
          }
        },
        {
          "id": "48f0210f-7339-4fbc-acc9-edd450b72f59",
          "type": "basic.info",
          "data": {
            "info": "**Parte 1**",
            "readonly": true
          },
          "position": {
            "x": 328,
            "y": 208
          },
          "size": {
            "width": 96,
            "height": 48
          }
        },
        {
          "id": "927d9a34-6bef-4d5e-b4b8-69693b937c7e",
          "type": "basic.info",
          "data": {
            "info": "**Parte 2**",
            "readonly": true
          },
          "position": {
            "x": 736,
            "y": 248
          },
          "size": {
            "width": 120,
            "height": 48
          }
        },
        {
          "id": "3c30910e-fb7e-4d58-9cde-6f50648df9c7",
          "type": "basic.info",
          "data": {
            "info": "**Parte 3a**",
            "readonly": true
          },
          "position": {
            "x": 1064,
            "y": 256
          },
          "size": {
            "width": 128,
            "height": 40
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "1875e26b-1fb4-45ea-8ad4-9a9ff558e4cb",
            "port": "07118187-90ac-45df-a96e-c9953e21680a"
          },
          "target": {
            "block": "5b33a541-96cc-4247-9d66-83208be37b7e",
            "port": "6551ba49-31a5-4ef6-ae54-7ddcd57e0acc"
          },
          "size": 2
        },
        {
          "source": {
            "block": "5b33a541-96cc-4247-9d66-83208be37b7e",
            "port": "6dc04ea7-b81d-4e30-a010-cf40851ec550"
          },
          "target": {
            "block": "64af1f27-34a7-439d-874d-01072a03da66",
            "port": "13f08783-448b-4310-bd5f-4aa7c58e3873"
          },
          "size": 2
        },
        {
          "source": {
            "block": "cc1ed6e0-169a-415b-9c31-5dc53432e136",
            "port": "out"
          },
          "target": {
            "block": "1875e26b-1fb4-45ea-8ad4-9a9ff558e4cb",
            "port": "16712921-3f02-489a-b173-1becb259ec08"
          }
        },
        {
          "source": {
            "block": "9aa61e1e-79aa-492b-a513-16f4a5ebbe9d",
            "port": "out"
          },
          "target": {
            "block": "1875e26b-1fb4-45ea-8ad4-9a9ff558e4cb",
            "port": "7c2d1844-7541-4e30-8711-dd7aaf3b6633"
          }
        },
        {
          "source": {
            "block": "5b33a541-96cc-4247-9d66-83208be37b7e",
            "port": "6dc04ea7-b81d-4e30-a010-cf40851ec550"
          },
          "target": {
            "block": "1875e26b-1fb4-45ea-8ad4-9a9ff558e4cb",
            "port": "09e2e2cf-6477-4f17-b770-95173b017101"
          },
          "vertices": [
            {
              "x": 328,
              "y": 472
            },
            {
              "x": 232,
              "y": 400
            }
          ],
          "size": 2
        },
        {
          "source": {
            "block": "74d2779b-428d-4098-98e9-8ea0819659bc",
            "port": "out"
          },
          "target": {
            "block": "5b33a541-96cc-4247-9d66-83208be37b7e",
            "port": "aedf04a2-5130-494f-9c8a-efa9637e1752"
          }
        },
        {
          "source": {
            "block": "67b2ada7-8fd9-4e8b-bb52-7a3ee5e37047",
            "port": "out"
          },
          "target": {
            "block": "5b33a541-96cc-4247-9d66-83208be37b7e",
            "port": "f7115b7c-55b2-442f-8f2b-c1fc1fca4ce2"
          },
          "vertices": [
            {
              "x": 680,
              "y": 480
            }
          ]
        },
        {
          "source": {
            "block": "64af1f27-34a7-439d-874d-01072a03da66",
            "port": "4a628683-a693-4033-beec-7271cad6ea71"
          },
          "target": {
            "block": "19dbd6b9-8c3e-49b7-8f5a-017d5a72df1e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "64af1f27-34a7-439d-874d-01072a03da66",
            "port": "0eced1f1-cfa9-4495-8a34-0ec0d3311fc0"
          },
          "target": {
            "block": "8f5ae0c4-d1e6-4003-8618-0621f4b8cbca",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "8a5de6f26ea9a4f1eef07fc71f31874bc984085f": {
      "package": {
        "name": "Next_State",
        "version": "1.0",
        "description": "Bloque combinacional donde se calcula el siguiente estado en función de las entradas y el estado actual",
        "author": "José Picó",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "16712921-3f02-489a-b173-1becb259ec08",
              "type": "basic.input",
              "data": {
                "name": "inA",
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
                "size": 2
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
                "clock": false,
                "size": 2
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
      }
    },
    "1c8148ac570eb07a67ea8a972f065541a235f33a": {
      "package": {
        "name": "Reg Estado",
        "version": "1.0",
        "description": "Almacena la información del estado en el que nos encontramos",
        "author": "José Picó",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6551ba49-31a5-4ef6-ae54-7ddcd57e0acc",
              "type": "basic.input",
              "data": {
                "name": "estado_siguiente",
                "range": "[1:0]",
                "clock": false,
                "size": 2
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
                "size": 2
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
      }
    },
    "d013f25035b2b74c04f4f1e8f081aa056d585607": {
      "package": {
        "name": "Salida_Moore",
        "version": "1.0",
        "description": "Salida  = función ( estado_actual)",
        "author": "José Picó",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4a628683-a693-4033-beec-7271cad6ea71",
              "type": "basic.output",
              "data": {
                "name": "OutA"
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
                "clock": false,
                "size": 2
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
                "name": "OutB"
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
      }
    }
  }
}