{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 59.0, 104.0, 622.0, 480.0 ],
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
					"fontface" : 0,
					"fontname" : "Ricty",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 370.0, 330.0, 140.0, 21.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "dsp.gen",
						"rect" : [ 1056.0, 87.0, 698.0, 902.0 ],
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
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 640.0, 10.0, 32.0, 21.0 ],
									"text" : "in 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 430.0, 10.0, 32.0, 21.0 ],
									"text" : "in 3"
								}

							}
, 							{
								"box" : 								{
									"code" : "//============================================================\n// buffers\n\nBuffer buf_size(\"buf_size\");\nBuffer buf_function(\"buf_function\");\n\n//============================================================\n// state variables\n\nHistory y1(0);\nHistory index(0);\n\n//============================================================\n// parameters\n\nParam sr(44.1);\n\n//============================================================\n// main process\n// store the following in buf_function.\n// (inevitably, the trailing element uses only 1ch.)\n// 1ch: y\n// 2ch: delta to the next y\n// 3ch: time to the next y\n\nsize_max = dim(buf_function);\n\nif(in4<=size_max)\n{\n    if(index==0)\n    {\n        poke(buf_function, in1, index, 0);\n        y1 = in1;\n\n        if(in4>1)\n        {\n            index += 1;\n        }\n        else\n        {\n            for(itr=in4; itr<size_max; itr+=1)\n            {\n                poke(buf_function, 0, itr,   0);\n                poke(buf_function, 0, itr-1, 1);\n                poke(buf_function, 0, itr-1, 2);\n                poke(buf_function, 0, itr-1, 3);\n            }\n\n            poke(buf_size, in4, 0);\n        }\n    }\n    else\n    {\n        t  = in2*sr;\n        dy = (in1-y1)/t;\n\n        poke(buf_function, in1, index,   0);\n        poke(buf_function, dy,  index-1, 1);\n        poke(buf_function, t,   index-1, 2);\n        poke(buf_function, in3, index-1, 3);\n\n        y1     = in1;\n\n        if(index<in4-1)\n        {\n            index += 1;\n        }\n        else\n        {\n            for(itr=in4; itr<size_max; itr+=1)\n            {\n                poke(buf_function, 0, itr,   0);\n                poke(buf_function, 0, itr-1, 1);\n                poke(buf_function, 0, itr-1, 2);\n                poke(buf_function, 0, itr-1, 3);\n            }\n\n            poke(buf_size, in4, 0);\n            index = 0;\n        }\n    }\n}",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 40.0, 649.0, 840.0 ]
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
									"patching_rect" : [ 220.0, 10.0, 32.0, 21.0 ],
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
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 3 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 2 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 70.333333333333371, 280.0, 117.0, 21.0 ],
					"text" : "gen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 168.333333333333371, 250.0, 29.5, 21.0 ],
					"text" : "/ 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 168.333333333333371, 220.0, 44.0, 21.0 ],
					"text" : "zl.len"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 70.333333333333371, 250.0, 84.333333333333314, 21.0 ],
					"text" : "unpack f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 70.333333333333371, 220.0, 68.0, 21.0 ],
					"text" : "zl.group 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 70.333333333333371, 310.0, 206.0, 21.0 ],
					"text" : "buffer~ buf_function 0 4 @samps 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 70.333333333333371, 340.0, 158.0, 21.0 ],
					"text" : "buffer~ buf_size @samps 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "live.scope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 360.0, 180.0, 210.0, 74.0 ],
					"range" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "dsp.gen",
						"rect" : [ 969.0, 87.0, 618.0, 913.0 ],
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
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 880.0, 38.0, 21.0 ],
									"text" : "out 1"
								}

							}
, 							{
								"box" : 								{
									"code" : "//============================================================\n// buffers\n\nBuffer buf_function(\"buf_function\");\nBuffer buf_size(\"buf_size\");\n\n//============================================================\n// state variables\n\nData    d_function(512, 4);\nHistory index(0);\nHistory size(0);\nHistory y(0);\nHistory y_curved(0);\nHistory d(0);\nHistory c(0);\nHistory time(0);\n\n//============================================================\n// main loop\n\nif(in1==1)\n{\n    index = 0;\n    size  = peek(buf_size, 0);\n\n    for(itr=0; itr<size; itr+=1)\n    {\n        poke(d_function, peek(buf_function, itr, 0), itr, 0);\n        poke(d_function, peek(buf_function, itr, 1), itr, 1);\n        poke(d_function, peek(buf_function, itr, 2), itr, 2);\n        poke(d_function, peek(buf_function, itr, 3), itr, 3);\n    }\n    y        = peek(d_function, index, 0);\n    d        = peek(d_function, index, 1);\n    time     = peek(d_function, index, 2);\n    c        = peek(d_function, index, 3);\n    y_curved = y;\n}\n\nout1 = y_curved;\n\nif(time>0)\n{\n    y    += d;\n    time -= 1;\n\n    from = peek(buf_function, index,   0);\n    to   = peek(buf_function, index+1, 0);\n\n    y_curved = (y-from) / (to-from);\n    \n    if(c>0) { y_curved = exp(ln(y_curved) * (1/(1-c))); }\n    else    { y_curved = exp(ln(y_curved) * (1+c)); }\n\n    y_curved = y_curved * (to-from) + from;\n}\nelse\n{\n    if(index<(size-1))\n    {\n        index += 1;\n        y      = peek(d_function, index, 0);\n        d      = peek(d_function, index, 1);\n        time   = peek(d_function, index, 2);\n        c      = peek(d_function, index, 3);\n    }\n    else\n    {\n        y_curved = peek(d_function, index, 0);\n    }\n}",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 40.0, 590.0, 830.0 ]
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
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 360.0, 150.0, 32.0, 21.0 ],
					"text" : "gen~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 360.0, 120.0, 44.0, 21.0 ],
					"text" : "click~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 90.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 60.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 26.595744680851062, 1.0, 0, 0.445, 58.51063829787234, 0.333333333333333, 0, -0.4, 138.297872340425528, 0.453333333333333, 0, 0.65, 1000.0, 0.0, 0, -0.705 ],
					"grid" : 3,
					"id" : "obj-1",
					"maxclass" : "function",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"outputmode" : 1,
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 90.0, 200.0, 100.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 79.833333333333343, 205.0, 177.833333333333371, 205.0 ],
					"order" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 200.5, 200.0, 218.0, 200.0, 218.0, 49.0, 19.5, 49.0 ],
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 3 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 2 ],
					"source" : [ "obj-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
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
