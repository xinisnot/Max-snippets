{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 23.0, 87.0, 1418.0, 894.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Ricty",
		"gridonopen" : 2,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "myTemplate",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 850.0, 110.0, 21.0 ],
					"text" : "buffer~ buf_table"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.0, 320.0, 56.0, 21.0 ],
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 300.0, 290.0, 29.5, 21.0 ],
					"text" : "+"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 24,
						"data" : [ 							{
								"key" : 97,
								"value" : [ -3 ]
							}
, 							{
								"key" : 119,
								"value" : [ -2 ]
							}
, 							{
								"key" : 115,
								"value" : [ -1 ]
							}
, 							{
								"key" : 100,
								"value" : [ 0 ]
							}
, 							{
								"key" : 114,
								"value" : [ 1 ]
							}
, 							{
								"key" : 102,
								"value" : [ 2 ]
							}
, 							{
								"key" : 116,
								"value" : [ 3 ]
							}
, 							{
								"key" : 103,
								"value" : [ 4 ]
							}
, 							{
								"key" : 104,
								"value" : [ 5 ]
							}
, 							{
								"key" : 117,
								"value" : [ 6 ]
							}
, 							{
								"key" : 106,
								"value" : [ 7 ]
							}
, 							{
								"key" : 105,
								"value" : [ 8 ]
							}
, 							{
								"key" : 107,
								"value" : [ 9 ]
							}
, 							{
								"key" : 111,
								"value" : [ 10 ]
							}
, 							{
								"key" : 108,
								"value" : [ 11 ]
							}
, 							{
								"key" : 59,
								"value" : [ 12 ]
							}
, 							{
								"key" : 64,
								"value" : [ 13 ]
							}
, 							{
								"key" : 58,
								"value" : [ 14 ]
							}
, 							{
								"key" : 91,
								"value" : [ 15 ]
							}
, 							{
								"key" : 93,
								"value" : [ 16 ]
							}
, 							{
								"key" : 122,
								"value" : [ "octDown" ]
							}
, 							{
								"key" : 120,
								"value" : [ "octUp" ]
							}
, 							{
								"key" : 99,
								"value" : [ "velDown" ]
							}
, 							{
								"key" : 118,
								"value" : [ "velUp" ]
							}
 ]
					}
,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 300.0, 200.0, 86.0, 21.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"precision" : 6
					}
,
					"text" : "coll @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 300.0, 170.0, 50.5, 21.0 ],
					"text" : "keyup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 310.0, 68.0, 21.0 ],
					"text" : "pack 0 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 100.0, 280.0, 29.5, 21.0 ],
					"text" : "+"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 130.0, 220.0, 32.0, 21.0 ],
					"text" : "+ 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 130.0, 190.0, 32.0, 21.0 ],
					"text" : "* 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 130.0, 160.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 143.75, 100.0, 29.5, 21.0 ],
					"text" : "inc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 100.0, 29.5, 21.0 ],
					"text" : "dec"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "incdec",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 100.0, 160.0, 20.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 100.0, 70.0, 194.0, 21.0 ],
					"text" : "sel octDown octUp velDown velUp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "kslider",
					"mode" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : 21,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 100.0, 360.0, 624.0, 53.0 ],
					"range" : 88
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 24,
						"data" : [ 							{
								"key" : 97,
								"value" : [ -3 ]
							}
, 							{
								"key" : 119,
								"value" : [ -2 ]
							}
, 							{
								"key" : 115,
								"value" : [ -1 ]
							}
, 							{
								"key" : 100,
								"value" : [ 0 ]
							}
, 							{
								"key" : 114,
								"value" : [ 1 ]
							}
, 							{
								"key" : 102,
								"value" : [ 2 ]
							}
, 							{
								"key" : 116,
								"value" : [ 3 ]
							}
, 							{
								"key" : 103,
								"value" : [ 4 ]
							}
, 							{
								"key" : 104,
								"value" : [ 5 ]
							}
, 							{
								"key" : 117,
								"value" : [ 6 ]
							}
, 							{
								"key" : 106,
								"value" : [ 7 ]
							}
, 							{
								"key" : 105,
								"value" : [ 8 ]
							}
, 							{
								"key" : 107,
								"value" : [ 9 ]
							}
, 							{
								"key" : 111,
								"value" : [ 10 ]
							}
, 							{
								"key" : 108,
								"value" : [ 11 ]
							}
, 							{
								"key" : 59,
								"value" : [ 12 ]
							}
, 							{
								"key" : 64,
								"value" : [ 13 ]
							}
, 							{
								"key" : 58,
								"value" : [ 14 ]
							}
, 							{
								"key" : 91,
								"value" : [ 15 ]
							}
, 							{
								"key" : 93,
								"value" : [ 16 ]
							}
, 							{
								"key" : 122,
								"value" : [ "octDown" ]
							}
, 							{
								"key" : 120,
								"value" : [ "octUp" ]
							}
, 							{
								"key" : 99,
								"value" : [ "velDown" ]
							}
, 							{
								"key" : 118,
								"value" : [ "velUp" ]
							}
 ]
					}
,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 100.0, 40.0, 86.0, 21.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"precision" : 6
					}
,
					"text" : "coll @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 100.0, 10.0, 50.5, 21.0 ],
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-39",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 770.0, 520.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 850.0, 38.0, 21.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 680.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-30",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 610.0, 520.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 770.0, 550.0, 56.0, 21.0 ],
					"text" : "curve $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 690.0, 520.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 690.0, 550.0, 68.0, 21.0 ],
					"text" : "release $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 610.0, 550.0, 68.0, 21.0 ],
					"text" : "sustain $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 540.0, 520.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 550.0, 56.0, 21.0 ],
					"text" : "decay $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 460.0, 520.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 550.0, 62.0, 21.0 ],
					"text" : "attack $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 952.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 620.0, 772.5, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "dsp.gen",
						"rect" : [ 510.0, 265.0, 932.0, 691.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Ricty",
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "myTemplate",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"code" : "//============================================================\n// functions\n\nfind(arr, target_value)\n{\n    itr     = 0;\n    itr_end = dim(arr);\n    \n    while(itr!=itr_end)\n    {\n        value = peek(arr, itr);\n        if(value==target_value) break;\n        itr += 1;\n    }\n    \n    return itr;\n}\n\nsimpleCurve(input, amount)\n{\n    y = 0;\n    if(amount>0)\n    {\n        y = fastexp(ln(input) * (1/(1-amount)));\n    }\n    else\n    {\n        y = fastexp(ln(input) * (1+amount));\n    }\n\n    return y;\n}\n\n//============================================================\n// buffers\n\nBuffer buf_notesTable(\"buf_notesTable\");\nBuffer buf_indexOfBusyNote(\"buf_indexOfBusyNote\");\nBuffer buf_numOfBusyNote(\"buf_numOfBusyNote\");\nBuffer buf_ampEnvelope(\"buf_ampEnvelope\");\r\nBuffer buf_table(\"buf_table\");\n\n//============================================================\n// state variables\n\nData dat_phases(128);\nData dat_indexOfDeadNote(128);\n\n//============================================================\n// main process\n\nsig = 0;\nnumOfBusyNote = peek(buf_numOfBusyNote, 0);\nnumOfDead = 0;\n\nfor(itr=0; itr<numOfBusyNote; itr+=1)\n{\n    noteNumber  = peek(buf_indexOfBusyNote, itr);\n\n    p           = peek(dat_phases,      noteNumber);\n    amp         = peek(buf_ampEnvelope, noteNumber, 0);\n    ampCurve    = peek(buf_ampEnvelope, noteNumber, 2);\n\n    sig += nearest(buf_table, p) * simpleCurve(amp, ampCurve);\n\n    // update of phase\n    dp = peek(buf_notesTable, noteNumber, 1);\n    poke(dat_phases, wrap((p+dp), 0, 1), noteNumber);\n\n    // update of amp\n    breakpoint = peek(buf_ampEnvelope, noteNumber, 1);\n\n    if(breakpoint==1)\n    {\n        d = peek(buf_ampEnvelope, noteNumber, 5);\n        l = peek(buf_ampEnvelope, noteNumber, 3);\n        amp = d!=0 ? amp+d : l;\n        poke(buf_ampEnvelope, amp, noteNumber, 0);\n\n        if(amp>=l)\n        {\n            poke(buf_ampEnvelope, 2, noteNumber, 1);\n        }\n    }\n    else if(breakpoint==2)\n    {\n        d = peek(buf_ampEnvelope, noteNumber, 6);\n        l = peek(buf_ampEnvelope, noteNumber, 4);\n        amp = d!=0 ? amp+d : l;\n        poke(buf_ampEnvelope, amp, noteNumber, 0);\n        \n        if(amp<=l)\n        {\n            poke(buf_ampEnvelope, 3, noteNumber, 1);\n        }\n    }\n    else if(breakpoint==3)\n    {\n        poke(buf_ampEnvelope, peek(buf_ampEnvelope, noteNumber, 4), noteNumber, 0);\n    }\n    else if(breakpoint==4)\n    {\n        d = peek(buf_ampEnvelope, noteNumber, 7);\n        amp = d!=0 ? amp+d : 0;\n        poke(buf_ampEnvelope, amp, noteNumber, 0);\n\n        if(amp<=0)\n        {\n            poke(buf_ampEnvelope, 0, noteNumber, 1);\n            poke(dat_indexOfDeadNote, noteNumber, numOfDead);\n            numOfDead += 1;\n        }\n    }\n}\n\nout1 = sig;\n\n// clean up dead notes\nfor(itr=0; itr<numOfDead; itr+=1)\n{\n    noteNumber = peek(dat_indexOfDeadNote, itr);\n    indexOfDeadNote = find(buf_indexOfBusyNote, noteNumber);\n    numOfBusyNote = peek(buf_numOfBusyNote, 0);\n\n    if(numOfBusyNote-1 != indexOfDeadNote)\n    {\n        poke(buf_indexOfBusyNote, peek(buf_indexOfBusyNote, numOfBusyNote-1), indexOfDeadNote);\n    }\n\n    poke(buf_indexOfBusyNote, 0, numOfBusyNote-1);\n    poke(buf_notesTable, 0, noteNumber, 0);\n    poke(buf_numOfBusyNote, peek(buf_numOfBusyNote, 0)-1, 0);\n}",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 10.0, 900.0, 640.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 660.0, 38.0, 21.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 620.0, 742.5, 32.0, 21.0 ],
					"text" : "gen~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "dsp.gen",
						"rect" : [ 546.0, 87.0, 953.0, 845.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Ricty",
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "myTemplate",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"code" : "//============================================================\n// buffers\n\nBuffer buf_notesTable(\"buf_notesTable\");\nBuffer buf_indexOfBusyNote(\"buf_indexOfBusyNote\");\nBuffer buf_numOfBusyNote(\"buf_numOfBusyNote\");\nBuffer buf_ampEnvelope(\"buf_ampEnvelope\");\n\n//============================================================\n// parameters\n\nParam sr(44100);\nParam attack(5, min=0);\nParam decay(80, min=0);\nParam sustain(0.25, min=0, max=1);\nParam release(300, min=0);\nParam curve(0, min=-1, max=1);\n\n//============================================================\n// main process\n\nstateOfTargetNote = peek(buf_notesTable, in1, 0);\n\nif(in2!=0)\n{\n    // note on\n    if(stateOfTargetNote==0)\n    {\n        // write amp envelope\n        peakLevel       = in2/127;\n        sustainLevel    = peakLevel*sustain;\n        poke(buf_ampEnvelope, 0,                                            in1, 0);\n        poke(buf_ampEnvelope, 1,                                            in1, 1);\n        poke(buf_ampEnvelope, curve,                                        in1, 2);\n        poke(buf_ampEnvelope, peakLevel,                                    in1, 3);\n        poke(buf_ampEnvelope, sustainLevel,                                 in1, 4);\n        poke(buf_ampEnvelope, peakLevel/(0.001*sr*attack),                  in1, 5);\n        poke(buf_ampEnvelope, (sustainLevel-peakLevel)/(0.001*sr*decay),    in1, 6);\n        \n        // write note state\n        numOfBusyNote = peek(buf_numOfBusyNote, 0);\n        poke(buf_notesTable, 1, in1, 0);\n        poke(buf_indexOfBusyNote, in1, numOfBusyNote);\n        poke(buf_numOfBusyNote, numOfBusyNote+1, 0);\n    }\n    else if(stateOfTargetNote==2)\n    {\n        // write amp envelope\n        peakLevel       = in2/127;\n        sustainLevel    = peakLevel*sustain;\n        currentLevel    = peek(buf_ampEnvelope, in1, 0);\n        poke(buf_ampEnvelope, 1,                                            in1, 1);\n        poke(buf_ampEnvelope, curve,                                        in1, 2);\n        poke(buf_ampEnvelope, peakLevel,                                    in1, 3);\n        poke(buf_ampEnvelope, sustainLevel,                                 in1, 4);\n        poke(buf_ampEnvelope, (peakLevel-currentLevel)/(0.001*sr*attack),   in1, 5);\n        poke(buf_ampEnvelope, (sustainLevel-peakLevel)/(0.001*sr*decay),    in1, 6);\n        \n        // update note state\n        poke(buf_notesTable, 1, in1, 0);\n    }\n}\nelse\n{\n    // note off\n    if(stateOfTargetNote==1)\n    {\n        // write release of amp envelope\n        currentLevel = peek(buf_ampEnvelope, in1, 0);\n        poke(buf_ampEnvelope, -currentLevel/(0.001*sr*release), in1, 7);\n        poke(buf_ampEnvelope, 4,                                in1, 1);\n\n        // update note state\n        poke(buf_notesTable, 2, in1, 0);\n    }\n}",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 40.0, 909.0, 680.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 10.0, 32.0, 21.0 ],
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 900.0, 10.0, 32.0, 21.0 ],
									"text" : "in 2"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 100.0, 610.0, 29.5, 21.0 ],
					"text" : "gen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 130.0, 970.0, 242.0, 21.0 ],
					"text" : "buffer~ buf_ampEnvelope 0 10 @samps 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "dsp.gen",
						"rect" : [ 59.0, 104.0, 415.0, 240.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Ricty",
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "myTemplate",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"code" : "Buffer buf_notesTable(\"buf_notesTable\");\n\nParam sr(44100);\n\nfor(itr=0; itr<dim(buf_notesTable); itr+=1)\n{\n    dp = mtof(itr) / sr;\n    poke(buf_notesTable, dp, itr, 1);\n}",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 40.0, 380.0, 180.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 10.0, 32.0, 21.0 ],
									"text" : "in 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 130.0, 850.0, 29.5, 21.0 ],
					"text" : "gen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 130.0, 820.0, 56.0, 21.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 130.0, 940.0, 212.0, 21.0 ],
					"text" : "buffer~ buf_numOfBusyNote @samps 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 130.0, 910.0, 236.0, 21.0 ],
					"text" : "buffer~ buf_indexOfBusyNote @samps 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 130.0, 880.0, 230.0, 21.0 ],
					"text" : "buffer~ buf_notesTable 0 2 @samps 128"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"order" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"order" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"order" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"order" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-56", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 3,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 2,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-12" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
