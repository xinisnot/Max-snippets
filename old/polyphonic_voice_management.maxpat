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
		"rect" : [ 34.0, 104.0, 1466.0, 821.0 ],
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
					"id" : "obj-10",
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
						"rect" : [ 59.0, 104.0, 1005.0, 697.0 ],
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
									"code" : "//============================================================\n// buffers\n\nBuffer buf_indexOfBusyNote(\"buf_indexOfBusyNote\");\nBuffer buf_numOfBusyNote(\"buf_numOfBusyNote\");\nBuffer buf_notesTable(\"buf_notesTable\");\n\n// buf_notestable is used to manage the state of the note, the increments per sample, and the respective parameters\n// note state\n//  00 -> state of note (0 is free, 1 is busy, 2 is release)\n//  01 -> increments per sample\n// amp envelope\n//  02 -> value\n//  03 -> breakpoint\n//  04 -> curve\n//  05 -> peak level\n//  06 -> sustain level\n//  07 -> static level\n//  08 -> delta of attack\n//  09 -> delta of decay\n//  10 -> delta of release\n// pitch envelope\n//  11 -> value\n//  12 -> breakpoint\n//  13 -> curve\n//  14 -> peak level\n//  15 -> sustain level\n//  16 -> static level\n//  17 -> delta of attack\n//  18 -> delta of decay\n//  19 -> delta of release\n// flter envelope\n//  20 -> value\n//  21 -> breakpoint\n//  22 -> curve\n//  23 -> peak level\n//  24 -> sustain level\n//  25 -> static level\n//  26 -> delta of attack\n//  27 -> delta of decay    \n//  28 -> delta of release\n\n//============================================================\n// parameters\n\nParam sr(44100);\nParam amp_attack(5, min=0);\nParam amp_peak(1, min=0, max=1);\nParam amp_decay(80, min=0);\nParam amp_sustain(0.25, min=0, max=1);\nParam amp_release(300, min=0);\nParam amp_curve(0, min=-1, max=1);\nParam amp_sensitivity(1, min=0, max=1);\nParam pitch_attack(5, min=0);\nParam pitch_peak(1, min=0, max=1);\nParam pitch_decay(80, min=0);\nParam pitch_sustain(0.25, min=0, max=1);\nParam pitch_release(300, min=0);\nParam pitch_curve(0, min=-1, max=1);\nParam pitch_sensitivity(1, min=0, max=1);\nParam filter_attack(5, min=0);\nParam filter_peak(1, min=0, max=1);\nParam filter_decay(80, min=0);\nParam filter_sustain(0.25, min=0, max=1);\nParam filter_release(300, min=0);\nParam filter_curve(0, min=-1, max=1);\nParam filter_sensitivity(1, min=0, max=1);\n\n//============================================================\n// main process\n\nstateOfTargetNote = peek(buf_notesTable, in1, 0);\n\nif(in2!=0) // note on\n{\n    if(stateOfTargetNote==0) // when note is free\n    {\n        // write parameters other than release time\n        // amp\n        peakLevel       = amp_peak * (in2*amp_sensitivity/127);\n        sustainLevel    = peakLevel * amp_sustain;\n        poke(buf_notesTable, 0,                                             in1, 2);\n        poke(buf_notesTable, 1,                                             in1, 3);\n        poke(buf_notesTable, amp_curve,                                     in1, 4);\n        poke(buf_notesTable, peakLevel,                                     in1, 5);\n        poke(buf_notesTable, sustainLevel,                                  in1, 6);\n        poke(buf_notesTable, peakLevel/(0.001*sr*amp_attack),               in1, 7);\n        poke(buf_notesTable, (sustainLevel-peakLevel)/(0.001*sr*amp_decay), in1, 8);\n\n        // pitch\n        peakLevel       = pitch_peak * (in2*pitch_sensitivity/127);\n        sustainLevel    = peakLevel * pitch_sustain;\n        poke(buf_notesTable, 0,                                               in1, 9);\n        poke(buf_notesTable, 1,                                               in1, 10);\n        poke(buf_notesTable, pitch_curve,                                     in1, 11);\n        poke(buf_notesTable, peakLevel,                                       in1, 12);\n        poke(buf_notesTable, sustainLevel,                                    in1, 13);\n        poke(buf_notesTable, peakLevel/(0.001*sr*pitch_attack),               in1, 14);\n        poke(buf_notesTable, (sustainLevel-peakLevel)/(0.001*sr*pitch_decay), in1, 15);\n\n        // filter\n        peakLevel       = pitch_peak * (in2*filter_sensitivity/127);\n        sustainLevel    = peakLevel * filter_sustain;\n        poke(buf_notesTable, 0,                                                in1, 16);\n        poke(buf_notesTable, 1,                                                in1, 17);\n        poke(buf_notesTable, filter_curve,                                     in1, 18);\n        poke(buf_notesTable, peakLevel,                                        in1, 19);\n        poke(buf_notesTable, sustainLevel,                                     in1, 20);\n        poke(buf_notesTable, peakLevel/(0.001*sr*filter_attack),               in1, 21);\n        poke(buf_notesTable, (sustainLevel-peakLevel)/(0.001*sr*filter_decay), in1, 22);\n        \n        // update note state\n        poke(buf_notesTable, 1, in1, 0);\n\n        numOfBusyNote = peek(buf_numOfBusyNote, 0);\n        poke(buf_indexOfBusyNote, in1, numOfBusyNote);\n        poke(buf_numOfBusyNote, numOfBusyNote+1, 0);\n    }\n    else if(stateOfTargetNote==2) // when note is release\n    {\n        // write parameters other than release time\n        // amp\n        peakLevel       = amp_peak * (in2*amp_sensitivity/127);\n        sustainLevel    = peakLevel*amp_sustain;\n        currentLevel    = peek(buf_notesTable, in1, 2);\n        poke(buf_notesTable, 1,                                              in1, 3);\n        poke(buf_notesTable, amp_curve,                                      in1, 4);\n        poke(buf_notesTable, peakLevel,                                      in1, 5);\n        poke(buf_notesTable, sustainLevel,                                   in1, 6);\n        poke(buf_notesTable, (peakLevel-currentLevel)/(0.001*sr*amp_attack), in1, 7);\n        poke(buf_notesTable, (sustainLevel-peakLevel)/(0.001*sr*amp_decay),  in1, 8);\n\n        // pitch\n        peakLevel       = pitch_peak * (in2*pitch_sensitivity/127);\n        sustainLevel    = peakLevel*pitch_sustain;\n        currentLevel    = peek(buf_notesTable, in1, 9);\n        poke(buf_notesTable, 1,                                                in1, 10);\n        poke(buf_notesTable, pitch_curve,                                      in1, 11);\n        poke(buf_notesTable, peakLevel,                                        in1, 12);\n        poke(buf_notesTable, sustainLevel,                                     in1, 13);\n        poke(buf_notesTable, (peakLevel-currentLevel)/(0.001*sr*pitch_attack), in1, 14);\n        poke(buf_notesTable, (sustainLevel-peakLevel)/(0.001*sr*pitch_decay),  in1, 15);\n\n        // filter\n        peakLevel       = filter_peak * (in2*filter_sensitivity/127);\n        sustainLevel    = peakLevel*filter_sustain;\n        currentLevel    = peek(buf_notesTable, in1, 16);\n        poke(buf_notesTable, 1,                                                 in1, 17);\n        poke(buf_notesTable, filter_curve,                                      in1, 18);\n        poke(buf_notesTable, peakLevel,                                         in1, 19);\n        poke(buf_notesTable, sustainLevel,                                      in1, 20);\n        poke(buf_notesTable, (peakLevel-currentLevel)/(0.001*sr*filter_attack), in1, 21);\n        poke(buf_notesTable, (sustainLevel-peakLevel)/(0.001*sr*filter_decay),  in1, 22);\n        \n        // update note state\n        poke(buf_notesTable, 1, in1, 0);\n    }\n}\nelse // note off\n{\n    if(stateOfTargetNote==1) // when note is busy\n    {\n        // write release of envelope\n        // amp\n        currentLevel = peek(buf_notesTable, in1, 0);\n        poke(buf_notesTable, -currentLevel/(0.001*sr*amp_release), in1, 7);\n        poke(buf_notesTable, 4,                                in1, 1);\n\n        // update note state\n        poke(buf_notesTable, 2, in1, 0);\n    }\n}",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 40.0, 980.0, 620.0 ]
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
					"patching_rect" : [ 550.0, 360.0, 29.5, 21.0 ],
					"text" : "gen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "list", "list" ],
					"patching_rect" : [ 840.0, 710.0, 80.0, 21.0 ],
					"text" : "omx.peaklim~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 390.0, 590.0, 110.0, 21.0 ],
					"text" : "buffer~ buf_table"
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
					"patching_rect" : [ 90.0, 150.0, 624.0, 53.0 ],
					"range" : 88
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
					"patching_rect" : [ 500.0, 440.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 590.0, 38.0, 21.0 ],
					"text" : "clear"
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
					"patching_rect" : [ 340.0, 440.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 470.0, 56.0, 21.0 ],
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
					"patching_rect" : [ 420.0, 440.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 470.0, 68.0, 21.0 ],
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
					"patching_rect" : [ 340.0, 470.0, 68.0, 21.0 ],
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
					"patching_rect" : [ 270.0, 440.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 470.0, 56.0, 21.0 ],
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
					"patching_rect" : [ 190.0, 440.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 190.0, 470.0, 62.0, 21.0 ],
					"text" : "attack $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 740.0, 45.0, 45.0 ]
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
					"patching_rect" : [ 840.0, 530.0, 48.0, 136.0 ],
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
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
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
						"rect" : [ 708.0, 290.0, 932.0, 691.0 ],
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
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 850.0, 660.0, 38.0, 21.0 ],
									"text" : "out 2"
								}

							}
, 							{
								"box" : 								{
									"code" : "//============================================================\n// functions\n\nfind(arr, target_value)\n{\n    itr     = 0;\n    itr_end = dim(arr);\n    \n    while(itr!=itr_end)\n    {\n        value = peek(arr, itr);\n        if(value==target_value) break;\n        itr += 1;\n    }\n    \n    return itr;\n}\n\nsimpleCurve(input, amount)\n{\n    y = 0;\n    if(amount>0)\n    {\n        y = fastexp(ln(input) * (1/(1-amount)));\n    }\n    else\n    {\n        y = fastexp(ln(input) * (1+amount));\n    }\n\n    return y;\n}\n\n//============================================================\n// buffers\n\nBuffer buf_notesTable(\"buf_notesTable\");\nBuffer buf_indexOfBusyNote(\"buf_indexOfBusyNote\");\nBuffer buf_numOfBusyNote(\"buf_numOfBusyNote\");\nBuffer buf_ampEnvelope(\"buf_ampEnvelope\");\r\nBuffer buf_table(\"buf_table\");\n\n//============================================================\n// state variables\n\nData dat_phases(128, 2);\nData dat_indexOfDeadNote(128);\n\n//============================================================\n// main process\n\nsigL = 0;\r\nsigR = 0;\nnumOfBusyNote = peek(buf_numOfBusyNote, 0);\nnumOfDead = 0;\n\nfor(itr=0; itr<numOfBusyNote; itr+=1)\n{\n    noteNumber  = peek(buf_indexOfBusyNote, itr);\n\n    p1          = peek(dat_phases,      noteNumber, 0);\r\n    p2          = peek(dat_phases,      noteNumber, 1);\n    amp         = peek(buf_ampEnvelope, noteNumber, 0);\n    ampCurve    = peek(buf_ampEnvelope, noteNumber, 2);\n\n    sigL += nearest(buf_table, p1) * simpleCurve(amp, ampCurve);\r\n    sigR += nearest(buf_table, p2) * simpleCurve(amp, ampCurve);\n\n    // update of phase\n    dp = peek(buf_notesTable, noteNumber, 1);\n    poke(dat_phases, wrap((p1+dp), 0, 1), noteNumber, 0);\r\n    poke(dat_phases, wrap((p2+dp*1.008), 0, 1), noteNumber, 1);\n\n    // update of amp\n    breakpoint = peek(buf_ampEnvelope, noteNumber, 1);\n\n    if(breakpoint==1)\n    {\n        d = peek(buf_ampEnvelope, noteNumber, 5);\n        l = peek(buf_ampEnvelope, noteNumber, 3);\n        amp = d!=0 ? amp+d : l;\n        poke(buf_ampEnvelope, amp, noteNumber, 0);\n\n        if(amp>=l)\n        {\n            poke(buf_ampEnvelope, 2, noteNumber, 1);\n        }\n    }\n    else if(breakpoint==2)\n    {\n        d = peek(buf_ampEnvelope, noteNumber, 6);\n        l = peek(buf_ampEnvelope, noteNumber, 4);\n        amp = d!=0 ? amp+d : l;\n        poke(buf_ampEnvelope, amp, noteNumber, 0);\n        \n        if(amp<=l)\n        {\n            poke(buf_ampEnvelope, 3, noteNumber, 1);\n        }\n    }\n    else if(breakpoint==3)\n    {\n        poke(buf_ampEnvelope, peek(buf_ampEnvelope, noteNumber, 4), noteNumber, 0);\n    }\n    else if(breakpoint==4)\n    {\n        d = peek(buf_ampEnvelope, noteNumber, 7);\n        amp = d!=0 ? amp+d : 0;\n        poke(buf_ampEnvelope, amp, noteNumber, 0);\n\n        if(amp<=0)\n        {\n            poke(buf_ampEnvelope, 0, noteNumber, 1);\n            poke(dat_indexOfDeadNote, noteNumber, numOfDead);\n            numOfDead += 1;\n        }\n    }\n}\n\nout1 = sigL;\r\nout2 = sigR;\n\n// clean up dead notes\nfor(itr=0; itr<numOfDead; itr+=1)\n{\n    noteNumber = peek(dat_indexOfDeadNote, itr);\n    indexOfDeadNote = find(buf_indexOfBusyNote, noteNumber);\n    numOfBusyNote = peek(buf_numOfBusyNote, 0);\n\n    if(numOfBusyNote-1 != indexOfDeadNote)\n    {\n        poke(buf_indexOfBusyNote, peek(buf_indexOfBusyNote, numOfBusyNote-1), indexOfDeadNote);\n    }\n\n    poke(buf_indexOfBusyNote, 0, numOfBusyNote-1);\n    poke(buf_notesTable, 0, noteNumber, 0);\n    poke(buf_numOfBusyNote, peek(buf_numOfBusyNote, 0)-1, 0);\n}",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
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
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 840.0, 480.0, 32.0, 21.0 ],
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
						"rect" : [ 546.0, 87.0, 953.0, 760.0 ],
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
									"code" : "//============================================================\n// buffers\n\nBuffer buf_notesTable(\"buf_notesTable\");\nBuffer buf_indexOfBusyNote(\"buf_indexOfBusyNote\");\nBuffer buf_numOfBusyNote(\"buf_numOfBusyNote\");\nBuffer buf_ampEnvelope(\"buf_ampEnvelope\");\n\n//============================================================\n// parameters\n\nParam sr(44100);\nParam attack(5, min=0);\nParam decay(80, min=0);\nParam sustain(0.25, min=0, max=1);\nParam release(300, min=0);\nParam curve(0, min=-1, max=1);\n\n//============================================================\n// main process\n\r\n// stateOfTargetNote==0 -> note is free\r\n// stateOfTargetNote==1 -> note is busy\r\n// stateOfTargetNote==2 -> note is release\nstateOfTargetNote = peek(buf_notesTable, in1, 0);\n\nif(in2!=0)\n{\n    // note on\n    if(stateOfTargetNote==0)\n    {\n        // write parameters other than release time\n        peakLevel       = in2/127;\n        sustainLevel    = peakLevel*sustain;\n        poke(buf_ampEnvelope, 0,                                            in1, 0);\n        poke(buf_ampEnvelope, 1,                                            in1, 1);\n        poke(buf_ampEnvelope, curve,                                        in1, 2);\n        poke(buf_ampEnvelope, peakLevel,                                    in1, 3);\n        poke(buf_ampEnvelope, sustainLevel,                                 in1, 4);\n        poke(buf_ampEnvelope, peakLevel/(0.001*sr*attack),                  in1, 5);\n        poke(buf_ampEnvelope, (sustainLevel-peakLevel)/(0.001*sr*decay),    in1, 6);\n        \n        // update note state\n        numOfBusyNote = peek(buf_numOfBusyNote, 0);\n        poke(buf_notesTable, 1, in1, 0);\n        poke(buf_indexOfBusyNote, in1, numOfBusyNote);\n        poke(buf_numOfBusyNote, numOfBusyNote+1, 0);\n    }\n    else if(stateOfTargetNote==2)\n    {\n        // write parameters other than release time\n        peakLevel       = in2/127;\n        sustainLevel    = peakLevel*sustain;\n        currentLevel    = peek(buf_ampEnvelope, in1, 0);\n        poke(buf_ampEnvelope, 1,                                            in1, 1);\n        poke(buf_ampEnvelope, curve,                                        in1, 2);\n        poke(buf_ampEnvelope, peakLevel,                                    in1, 3);\n        poke(buf_ampEnvelope, sustainLevel,                                 in1, 4);\n        poke(buf_ampEnvelope, (peakLevel-currentLevel)/(0.001*sr*attack),   in1, 5);\n        poke(buf_ampEnvelope, (sustainLevel-peakLevel)/(0.001*sr*decay),    in1, 6);\n        \n        // update note state\n        poke(buf_notesTable, 1, in1, 0);\n    }\n}\nelse\n{\n    // note off\n    if(stateOfTargetNote==1)\n    {\n        // write release of amp envelope\n        currentLevel = peek(buf_ampEnvelope, in1, 0);\n        poke(buf_ampEnvelope, -currentLevel/(0.001*sr*release), in1, 7);\n        poke(buf_ampEnvelope, 4,                                in1, 1);\n\n        // update note state\n        poke(buf_notesTable, 2, in1, 0);\n    }\n}",
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
					"patching_rect" : [ 100.0, 500.0, 29.5, 21.0 ],
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
					"patching_rect" : [ 220.0, 710.0, 242.0, 21.0 ],
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
					"patching_rect" : [ 220.0, 590.0, 29.5, 21.0 ],
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
					"patching_rect" : [ 220.0, 560.0, 56.0, 21.0 ],
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
					"patching_rect" : [ 220.0, 680.0, 212.0, 21.0 ],
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
					"patching_rect" : [ 220.0, 650.0, 236.0, 21.0 ],
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
					"patching_rect" : [ 220.0, 620.0, 230.0, 21.0 ],
					"text" : "buffer~ buf_notesTable 0 2 @samps 128"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 1 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
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
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-39", 0 ]
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
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-85", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-85", 0 ]
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
