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
		"rect" : [ 65.0, 356.0, 689.0, 456.0 ],
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
					"id" : "obj-43",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 370.0, 310.0, 56.0, 21.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 390.0, 240.0, 38.0, 21.0 ],
					"text" : "==~ 0"
				}

			}
, 			{
				"box" : 				{
					"attr" : "attack",
					"id" : "obj-35",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 102.0, 150.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "release",
					"id" : "obj-34",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 192.0, 150.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "decay",
					"id" : "obj-33",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 132.0, 150.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "sustain",
					"id" : "obj-16",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 162.0, 150.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 80.0, 320.0, 182.0, 21.0 ],
					"text" : "buffer~ buf_numNotes @samps 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 580.0, 262.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 580.0, 102.0, 48.0, 136.0 ],
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
					"id" : "obj-10",
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
						"rect" : [ 322.0, 87.0, 1293.0, 894.0 ],
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
									"code" : "//============================================================\n// buffers\n\nBuffer buf_notes(\"buf_notes\");\nBuffer buf_numNotes(\"buf_numNotes\");\nBuffer buf_params(\"buf_params\");\n\n//============================================================\n// main loop\n\nsig = 0;\nnumNotes = peek(buf_numNotes, 0);\n\nfor(itr=0; itr<numNotes; itr+=1)\n{\n    dp  = peek(buf_notes,  itr, 2);\n    p   = peek(buf_notes,  itr, 3);\n    amp = peek(buf_params, itr, 0);\n    bp  = peek(buf_params, itr, 6);\n    \n    sig += cos(TWOPI * p) * amp;\n    \n    poke(buf_notes, wrap(p+dp, 0, 1), itr, 3);\n\n    l_vel = peek(buf_params, itr, 1);\n\n    if(bp==1)\n    {\n        d_attack = peek(buf_params, itr, 2);\n        amp      = (d_attack!=0) ? clip(amp+d_attack, 0, l_vel) : l_vel;\n\n        poke(buf_params, amp, itr, 0);\n        if(amp>=l_vel)\n        {\n            poke(buf_params, 2, itr, 6);\n        }\n    }\n    else if(bp==2)\n    {\n        d_decay   = peek(buf_params, itr, 3);\n        l_sustain = peek(buf_params, itr, 4);\n        amp       = (d_decay!=0) ? clip(amp+d_decay, l_sustain, l_vel) : l_sustain;\n\n        poke(buf_params, amp, itr, 0);\n        if(amp<=l_sustain)\n        {\n            poke(buf_params, 3, itr, 6);\n        }\n    }\n    else if(bp==3)\n    {\n        poke(buf_params, peek(buf_params, itr, 4), itr, 0);\n    }\n    else if(bp==4)\n    {\n        l_sustain = peek(buf_params, itr, 4);\n        d_release = peek(buf_params, itr, 5);\n        amp       = (d_release!=0) ? clip(amp+d_release, 0, l_sustain) : 0;\n\n        poke(buf_params, amp, itr, 0);\n        if(amp<=0)\n        {\n            numNotes = peek(buf_numNotes, 0) - 1;\n\n            poke(buf_notes, peek(buf_notes, numNotes, 0), itr, 0);\n            poke(buf_notes, peek(buf_notes, numNotes, 1), itr, 1);\n            poke(buf_notes, peek(buf_notes, numNotes, 2), itr, 2);\n            poke(buf_notes, peek(buf_notes, numNotes, 3), itr, 3);\n\n            poke(buf_params, peek(buf_params, numNotes, 0), itr, 0);\n            poke(buf_params, peek(buf_params, numNotes, 1), itr, 1);\n            poke(buf_params, peek(buf_params, numNotes, 2), itr, 2);\n            poke(buf_params, peek(buf_params, numNotes, 3), itr, 3);\n            poke(buf_params, peek(buf_params, numNotes, 4), itr, 4);\n            poke(buf_params, peek(buf_params, numNotes, 5), itr, 5);\n            poke(buf_params, peek(buf_params, numNotes, 6), itr, 6);\n            \n            poke(buf_notes, 0, numNotes, 0);\n            poke(buf_notes, 0, numNotes, 1);\n            poke(buf_notes, 0, numNotes, 2);\n            poke(buf_notes, 0, numNotes, 3);\n\n            poke(buf_params, 0, numNotes, 0);\n            poke(buf_params, 0, numNotes, 1);\n            poke(buf_params, 0, numNotes, 2);\n            poke(buf_params, 0, numNotes, 3);\n            poke(buf_params, 0, numNotes, 4);\n            poke(buf_params, 0, numNotes, 5);\n            poke(buf_params, 0, numNotes, 6);\n\n            poke(buf_numNotes, numNotes, 0);\n        }\n    }\n}\n\nout1 = sig;",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 10.0, 1250.0, 840.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 860.0, 38.0, 21.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 580.0, 72.0, 32.0, 21.0 ],
					"text" : "gen~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 80.0, 290.0, 206.0, 21.0 ],
					"text" : "buffer~ buf_params 0 7 @samps 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 80.0, 260.0, 200.0, 21.0 ],
					"text" : "buffer~ buf_notes 0 4 @samps 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
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
						"rect" : [ 520.0, 122.0, 1028.0, 870.0 ],
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
									"code" : "//============================================================\n// functions\n\nfind(arr, target_value)\n{\n    itr     = 0;\n    itr_end = dim(arr);\n    \n    while(itr!=itr_end)\n    {\n        value = peek(arr, itr);\n        if(value==target_value) break;\n        itr += 1;\n    }\n    \n    return itr;\n}\n\n//============================================================\n// buffers\n\nBuffer buf_notes(\"buf_notes\");\nBuffer buf_numNotes(\"buf_numNotes\");\nBuffer buf_params(\"buf_params\");\n\n//============================================================\n// parameters\n\nParam sr(44.1);\nParam attack(1000, min=0);\nParam decay(1000, min=0);\nParam sustain(0.8, min=0, max=1);\nParam release(600, min=0);\n\n//============================================================\n// main process\n\nindex    = find(buf_notes, in1);\nnumNotes = peek(buf_numNotes, 0);\n\nif(in2!=0)\n{\n    if(index == dim(buf_notes))\n    {\n        // update number of notes\n        poke(buf_numNotes, numNotes+1, 0);\n\n        // write midi note\n        poke(buf_notes, in1,                 numNotes, 0);\n        poke(buf_notes, in2,                 numNotes, 1);\n        poke(buf_notes, mtof(in1)/(sr*1000), numNotes, 2);\n        poke(buf_notes, 0,                   numNotes, 3);\n\n        // write parameter of amp envelope\n        l_vel      = in2 / 127;\n        l_sus      = l_vel * sustain;\n\n        poke(buf_params, 0,                               numNotes, 0);\n        poke(buf_params, l_vel,                           numNotes, 1);\n        poke(buf_params, l_vel         / (44.1 * attack), numNotes, 2);\n        poke(buf_params, (l_sus-l_vel) / (44.1 * decay),  numNotes, 3);\n        poke(buf_params, l_sus,                           numNotes, 4);\n        poke(buf_params, 1,                               numNotes, 6);\n    }\n    else\n    {\n        // update midi note\n        poke(buf_notes, in1,          index, 0);\n        poke(buf_notes, in2,          index, 1);\n        poke(buf_notes, mtof(in1)/(sr*1000), index, 2);\n        poke(buf_notes, 0,            index, 3);\n\n        // update parameter of amp envelope\n        l_vel      = in2 / 127;\n        l_sus      = l_vel * sustain;\n\n        poke(buf_params, l_vel,                             numNotes, 1);\n        poke(buf_params, l_vel           / (44.1 * attack), numNotes, 2);\n        poke(buf_params, (l_sus-l_vel)   / (44.1 * decay),  numNotes, 3);\n        poke(buf_params, l_sus,                             numNotes, 4);\n        poke(buf_params, 1,                                 numNotes, 6);\n    }\n}\nelse\n{\n    if(index != dim(buf_notes))\n    {\n        // write amp envelope\n        breakpoint = peek(buf_params, index, 6);\n\n        if(breakpoint==3)\n        {\n            l_sus = peek(buf_params, index, 4);\n\n            poke(buf_params, -l_sus / (44.1 * release), index, 5);\n            poke(buf_params, 4,                         index, 6);\n        }\n        else if(breakpoint==1 || breakpoint==2)\n        {\n            y = peek(buf_params, index, 0);\n\n            poke(buf_params, -y / (44.1 * release), index, 5);\n            poke(buf_params, 4,                     index, 6);\n        }\n    }\n}\r\n\r\nout1 = index;",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 40.0, 980.0, 810.0 ]
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
									"patching_rect" : [ 971.0, 10.0, 32.0, 21.0 ],
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
					"patching_rect" : [ 80.0, 226.0, 29.5, 21.0 ],
					"text" : "gen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "kslider",
					"mode" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 80.0, 40.0, 336.0, 53.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"midpoints" : [ 589.5, 249.5, 615.5, 249.5 ],
					"order" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11" : [ "live.gain~", "live.gain~", 0 ],
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
