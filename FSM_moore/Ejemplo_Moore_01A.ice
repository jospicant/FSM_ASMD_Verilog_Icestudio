{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "6f294fbe-8437-45ca-913d-f8484d10a36b",
          "type": "basic.input",
          "data": {
            "name": "inA",
            "pins": [
              {
                "index": "0",
                "name": "PMOD1",
                "value": "78"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -280,
            "y": 0
          }
        },
        {
          "id": "4f5c4f1d-a43f-4493-828a-f23e18ff73bc",
          "type": "basic.input",
          "data": {
            "name": "inB",
            "pins": [
              {
                "index": "0",
                "name": "PMOD7",
                "value": "87"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -280,
            "y": 112
          }
        },
        {
          "id": "2291f1d2-4335-47bb-9044-94411d64c5ef",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "D2",
                "value": "98"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 584,
            "y": 168
          }
        },
        {
          "id": "9671ee02-ad5d-4713-839c-a4107b7ec605",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 584,
            "y": 232
          }
        },
        {
          "id": "98a51e43-dd49-4918-97e4-23a95e08c613",
          "type": "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542",
          "position": {
            "x": 152,
            "y": 264
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b4406f15-f4fc-4113-b417-cf3e9a198ff3",
          "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
          "position": {
            "x": 40,
            "y": -32
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c980abaf-54c7-4c39-bd79-ec29c90bf388",
          "type": "3bfe20ce12a1017a3d0c324d97fac7a471e413ad",
          "position": {
            "x": -112,
            "y": -16
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "92c1b201-0ac3-463c-8b73-e7d2135bd32c",
          "type": "8e2728307baccbf26c01cdb87bcfba8ca64a435c",
          "position": {
            "x": 192,
            "y": -48
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "ca302467-44bb-4d4e-a1a2-9258a6152767",
          "type": "8e2728307baccbf26c01cdb87bcfba8ca64a435c",
          "position": {
            "x": 192,
            "y": 64
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "72acc669-f365-4cc9-b5c4-247fb8076cc7",
          "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
          "position": {
            "x": 40,
            "y": 80
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "452089d8-78ed-457d-8f04-964446650c52",
          "type": "3bfe20ce12a1017a3d0c324d97fac7a471e413ad",
          "position": {
            "x": -120,
            "y": 96
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "227d4bcc-109f-4713-ae12-df96492d5f8f",
          "type": "5c70f99155367bee0c554d397d3a30e7c4a2ff07",
          "position": {
            "x": 400,
            "y": 168
          },
          "size": {
            "width": 96,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "98a51e43-dd49-4918-97e4-23a95e08c613",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "227d4bcc-109f-4713-ae12-df96492d5f8f",
            "port": "67b2ada7-8fd9-4e8b-bb52-7a3ee5e37047"
          },
          "vertices": [
            {
              "x": 312,
              "y": 296
            },
            {
              "x": 320,
              "y": 272
            }
          ]
        },
        {
          "source": {
            "block": "b4406f15-f4fc-4113-b417-cf3e9a198ff3",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "92c1b201-0ac3-463c-8b73-e7d2135bd32c",
            "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
          }
        },
        {
          "source": {
            "block": "c980abaf-54c7-4c39-bd79-ec29c90bf388",
            "port": "7bfc506f-7a54-40a1-8d33-e78a5409b972"
          },
          "target": {
            "block": "b4406f15-f4fc-4113-b417-cf3e9a198ff3",
            "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
          }
        },
        {
          "source": {
            "block": "6f294fbe-8437-45ca-913d-f8484d10a36b",
            "port": "out"
          },
          "target": {
            "block": "c980abaf-54c7-4c39-bd79-ec29c90bf388",
            "port": "f25e9a9e-cd4c-4025-8745-0691a99a3fb8"
          }
        },
        {
          "source": {
            "block": "72acc669-f365-4cc9-b5c4-247fb8076cc7",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "ca302467-44bb-4d4e-a1a2-9258a6152767",
            "port": "b6426b43-dcda-418d-b6d3-4764b5bc0b25"
          }
        },
        {
          "source": {
            "block": "452089d8-78ed-457d-8f04-964446650c52",
            "port": "7bfc506f-7a54-40a1-8d33-e78a5409b972"
          },
          "target": {
            "block": "72acc669-f365-4cc9-b5c4-247fb8076cc7",
            "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
          }
        },
        {
          "source": {
            "block": "4f5c4f1d-a43f-4493-828a-f23e18ff73bc",
            "port": "out"
          },
          "target": {
            "block": "452089d8-78ed-457d-8f04-964446650c52",
            "port": "f25e9a9e-cd4c-4025-8745-0691a99a3fb8"
          }
        },
        {
          "source": {
            "block": "ca302467-44bb-4d4e-a1a2-9258a6152767",
            "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
          },
          "target": {
            "block": "227d4bcc-109f-4713-ae12-df96492d5f8f",
            "port": "9aa61e1e-79aa-492b-a513-16f4a5ebbe9d"
          },
          "vertices": [
            {
              "x": 328,
              "y": 160
            }
          ]
        },
        {
          "source": {
            "block": "92c1b201-0ac3-463c-8b73-e7d2135bd32c",
            "port": "1d2e403f-0fa6-41fd-83a9-4f309eadd855"
          },
          "target": {
            "block": "227d4bcc-109f-4713-ae12-df96492d5f8f",
            "port": "cc1ed6e0-169a-415b-9c31-5dc53432e136"
          },
          "vertices": [
            {
              "x": 352,
              "y": 104
            }
          ]
        },
        {
          "source": {
            "block": "227d4bcc-109f-4713-ae12-df96492d5f8f",
            "port": "8f5ae0c4-d1e6-4003-8618-0621f4b8cbca"
          },
          "target": {
            "block": "9671ee02-ad5d-4713-839c-a4107b7ec605",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "227d4bcc-109f-4713-ae12-df96492d5f8f",
            "port": "19dbd6b9-8c3e-49b7-8f5a-017d5a72df1e"
          },
          "target": {
            "block": "2291f1d2-4335-47bb-9044-94411d64c5ef",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542": {
      "package": {
        "name": "0",
        "version": "0.1",
        "description": "Un bit constante a 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.563%22%20height=%2257.469%22%20viewBox=%220%200%2031.465601%2053.876499%22%3E%3Cpath%20d=%22M21.822%2032.843l4.092%208.992-3.772%209.727%204.181%201.31m-12.967-19.26s-1.091%208.253-2.585%208.919C9.278%2043.198%201%2049.389%201%2049.389l2.647%203.256%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-.863%22%20y=%2230.575%22%20transform=%22scale(.90756%201.10186)%22%20font-weight=%22400%22%20font-size=%2254.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%3E%3Ctspan%20x=%22-.863%22%20y=%2230.575%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%3Eo%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 160
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 0\nassign q = 1'b0;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 256,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "cfd9babc26edba88e2152493023c4bef7c47f247": {
      "package": {
        "name": "Debouncer",
        "version": "1.0.0",
        "description": "Remove the rebound on a mechanical switch",
        "author": "Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-251.547%20436.672h22.802v-30.353h5.862v30.353h5.259v-30.353h3.447v30.353h2.984v-30.353h3.506v30.523h6.406V405.77h38.868%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%221.4%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-232.57%20403.877l26.946%2032.391M-205.624%20403.877l-26.946%2032.391%22%20fill=%22none%22%20stroke=%22red%22%20stroke-width=%223%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 48,
                "y": 144
              }
            },
            {
              "id": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 768,
                "y": 208
              }
            },
            {
              "id": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 48,
                "y": 272
              }
            },
            {
              "id": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
              "type": "basic.code",
              "data": {
                "code": "//-- Debouncer Circuit\n//-- It produces a stable output when the\n//-- input signal is bouncing\n\nreg btn_prev = 0;\nreg btn_out_r = 0;\n\nreg [16:0] counter = 0;\n\n\nalways @(posedge clk) begin\n\n  //-- If btn_prev and btn_in are differents\n  if (btn_prev ^ in == 1'b1) begin\n    \n      //-- Reset the counter\n      counter <= 0;\n      \n      //-- Capture the button status\n      btn_prev <= in;\n  end\n    \n  //-- If no timeout, increase the counter\n  else if (counter[16] == 1'b0)\n      counter <= counter + 1;\n      \n  else\n    //-- Set the output to the stable value\n    btn_out_r <= btn_prev;\n\nend\n\nassign out = btn_out_r;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "in"
                    }
                  ],
                  "out": [
                    {
                      "name": "out"
                    }
                  ]
                }
              },
              "position": {
                "x": 264,
                "y": 112
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "out"
              },
              "target": {
                "block": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "3bfe20ce12a1017a3d0c324d97fac7a471e413ad": {
      "package": {
        "name": "Sync",
        "version": "0.1",
        "description": "Sincronizar las entradas de datos con el reloj del sistema",
        "author": "Juan Gonzalez-González (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22214.451%22%20height=%22214.451%22%20viewBox=%220%200%20214.45128%20214.45128%22%3E%3Ccircle%20cx=%22107.226%22%20cy=%22107.226%22%20r=%22107.226%22%20fill=%22#4d4d4d%22/%3E%3Cpath%20d=%22M107.363%2038.297c14.504.03%2029.212%204.552%2040.7%2013.5%208.077%209.303-7.312%2019.268-14.243%2010.195-20.865-12.624-50.29-8.18-65.988%2010.695-8.352%209.367-13.058%2021.866-13.003%2034.413h13.789c-7.353%2011.037-14.707%2022.066-22.06%2033.095l-22.062-33.087h13.788c-.439-29.962%2021.108-58.462%2050.032-66.221%206.212-1.701%2012.607-2.654%2019.048-2.587zm60.53%2035.85l22.063%2033.092h-13.789c.39%2030.318-21.706%2059.137-51.14%2066.487-19.862%205.547-42.32%201.5-58.645-11.19-8.329-9.459%207.274-19.328%2014.27-10.173%2020.214%2012.265%2048.524%208.375%2064.48-9.142%209.242-9.522%2014.56-22.711%2014.489-35.982h-13.789l22.062-33.092z%22%20fill=%22#fbfbc9%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "39873fa0-c3f5-47ef-b54b-b6b344416b25",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 104,
                "y": 160
              }
            },
            {
              "id": "7bfc506f-7a54-40a1-8d33-e78a5409b972",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 688,
                "y": 208
              }
            },
            {
              "id": "f25e9a9e-cd4c-4025-8745-0691a99a3fb8",
              "type": "basic.input",
              "data": {
                "name": "pin",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 264
              }
            },
            {
              "id": "bee1f1d7-a4a5-4da3-86a6-d1a96c181f28",
              "type": "basic.code",
              "data": {
                "code": "// Sincronizacion. Evitar \n// problema de la metaestabilidad\n\nreg d1;\nreg d2;\n\nalways @(posedge clk)\n d1 <= i;\n \nalways @(posedge clk)\n  d2 <= d1;\n  \nassign o = d2;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "i"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 304,
                "y": 136
              },
              "size": {
                "width": 320,
                "height": 208
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f25e9a9e-cd4c-4025-8745-0691a99a3fb8",
                "port": "out"
              },
              "target": {
                "block": "bee1f1d7-a4a5-4da3-86a6-d1a96c181f28",
                "port": "i"
              }
            },
            {
              "source": {
                "block": "39873fa0-c3f5-47ef-b54b-b6b344416b25",
                "port": "out"
              },
              "target": {
                "block": "bee1f1d7-a4a5-4da3-86a6-d1a96c181f28",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "bee1f1d7-a4a5-4da3-86a6-d1a96c181f28",
                "port": "o"
              },
              "target": {
                "block": "7bfc506f-7a54-40a1-8d33-e78a5409b972",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "8e2728307baccbf26c01cdb87bcfba8ca64a435c": {
      "package": {
        "name": "Subida",
        "version": "0.1",
        "description": "Detector de flanco de subida. Emite un tic cuando detecta un flanco ascendente",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22363.337%22%20height=%22251.136%22%20viewBox=%220%200%2096.132868%2066.446441%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4z%22%20fill=%22red%22%20fill-rule=%22evenodd%22%20stroke=%22red%22%20stroke-width=%22.5332%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-63.113%20-50.902)%22%3E%3Cg%20fill=%22none%22%20stroke=%22#00f%22%20stroke-linecap=%22round%22%3E%3Cpath%20d=%22M76.611%2083.336l6.027%207.974-5.055%206.03%201.75%201.557M75.371%2083.53l-3.5%207.975-7.97%201.556.583%202.528%22%20stroke-width=%221.058%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M75.907%2083.53V53.588%22%20stroke-width=%223.969%22/%3E%3Cpath%20d=%22M65.118%2063.338l10.688-10.452%2010.351%2010.452%22%20stroke-width=%223.969%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3Cpath%20d=%22M123.88%2069.103c2.17%203.317%204.013%202.718%205.68%200%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%22.529%22%20stroke-linecap=%22round%22/%3E%3Cpath%20d=%22M132.326%2095.38V51.614h-11.225v43.497%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%221.323%22%20stroke-linecap=%22round%22/%3E%3Cellipse%20cx=%22112.489%22%20cy=%2297.866%22%20rx=%227.009%22%20ry=%222.635%22%20transform=%22rotate(-1.418)%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%22.265%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22-140.807%22%20cy=%2291.678%22%20rx=%227.009%22%20ry=%222.635%22%20transform=%22scale(-1%201)%20rotate(-1.418)%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%22.265%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M124.8%2059.416v3.875M128.39%2059.416v3.875%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%22.529%22/%3E%3Cpath%20d=%22M85.794%2074.097h21.381%22%20fill=%22red%22%20stroke=%22red%22%20stroke-width=%222.646%22%20marker-end=%22url(#a)%22/%3E%3Cg%20transform=%22matrix(.842%200%200%20.842%2062.024%2042.68)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4196184b-4a60-493b-bcc6-c95958483683",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 152,
                "y": 176
              }
            },
            {
              "id": "1d2e403f-0fa6-41fd-83a9-4f309eadd855",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 624,
                "y": 200
              }
            },
            {
              "id": "b6426b43-dcda-418d-b6d3-4764b5bc0b25",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 152,
                "y": 232
              }
            },
            {
              "id": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
              "type": "basic.code",
              "data": {
                "code": "reg q = 0;\n\nalways @(posedge clk)\n  q <= i;\n  \nassign o = (~q & i);  ",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "i"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 336,
                "y": 176
              },
              "size": {
                "width": 232,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b6426b43-dcda-418d-b6d3-4764b5bc0b25",
                "port": "out"
              },
              "target": {
                "block": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
                "port": "i"
              }
            },
            {
              "source": {
                "block": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
                "port": "o"
              },
              "target": {
                "block": "1d2e403f-0fa6-41fd-83a9-4f309eadd855",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4196184b-4a60-493b-bcc6-c95958483683",
                "port": "out"
              },
              "target": {
                "block": "3b0eca37-3439-41c9-99e7-7ff1e56bb528",
                "port": "clk"
              }
            }
          ]
        }
      }
    },
    "5c70f99155367bee0c554d397d3a30e7c4a2ff07": {
      "package": {
        "name": "Mi FSM",
        "version": "1.0",
        "description": "Máquina FSM por bloques representativos",
        "author": "José Picó",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "cc1ed6e0-169a-415b-9c31-5dc53432e136",
              "type": "basic.input",
              "data": {
                "name": "inA",
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
                "name": "OutA"
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
                "name": "OutB"
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
      }
    },
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