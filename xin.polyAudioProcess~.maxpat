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
		"rect" : [ 356.0, 156.0, 780.0, 383.0 ],
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
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 320.0, 110.0, 21.0 ],
					"text" : "loadmess fill sin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 640.0, 42.0, 116.0, 21.0 ],
					"text" : "buf_osc ---buf_osc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 638.5, 320.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 640.0, 170.0, 32.0, 138.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -70.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 10.0, 348.0, 188.0, 21.0 ],
					"text" : "buffer~ ---buf_osc @samps 4096"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
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
						"rect" : [ 296.0, 396.0, 958.0, 480.0 ],
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
									"patching_rect" : [ 910.0, 450.0, 38.0, 21.0 ],
									"text" : "out 2"
								}

							}
, 							{
								"box" : 								{
									"code" : "//============================================================\n// Polyphonic audio process.\n// A note can have the following three states\n//   0 = free\n//   1 = busy\n//   2 = release\n\n//============================================================\n// functions\n\nindexOf(buf, x)\n{\n    itr = 0;\n    \n    while(itr!=dim(buf))\n    {\n        if(peek(buf, itr)==x)\n        {\n            break;\n        }\n\n        itr += 1;\n    }\n\n    return itr;\n}\n\n\npolyAudioProcess(buf_notesTable, buf_indexOfBusyNote, buf_numOfBusyNote, buf_paramsOfNotes, buf_osc)\n{\n    Data phases(128);\n    Data indicesOfDeadNote(128);\n\n    yL = 0;\n    yR = 0;\n    numDead = 0;\n\n    // Implement polyphony in a for loop\n    for(itr=0; itr < peek(buf_numOfBusyNote, 0); itr+=1)\n    {\n        noteNumber  = peek(buf_indexOfBusyNote, itr);\n        stateOfNote = peek(buf_notesTable, noteNumber);\n\n        // process in the case of busy\n        if(stateOfNote==1)\n        {\n            // write process when note is busy\n            phase = peek(phases, noteNumber, 0);\n\n            yL += nearest(buf_osc, phase);\n            yR += nearest(buf_osc, phase);\n            \n            poke(phases, wrap((phase+peek(buf_notesTable, noteNumber, 1)), 0, 1), noteNumber, 0);\n        }\n        // process in the case of release\n        else if(stateOfNote==2)\n        {\n            // write process when note is release\n            poke(indicesOfDeadNote, noteNumber, numDead);\n            numDead += 1;\n        }\n    }\n\n    // clean up dead notes\n    for(itr=0; itr<numDead; itr+=1)\n    {\n        deadNoteNumber  = peek(indicesOfDeadNote, itr);\n        indexOfDeadNote = indexOf(buf_indexOfBusyNote, deadNoteNumber);\n        numOfBusyNote   = peek(buf_numOfBusyNote, 0);\n\n        // Overwrites the trailing element at the indexOfDeadNote address.\n        if(numOfBusyNote-1 != indexOfDeadNote)\n        {\n            poke(buf_indexOfBusyNote, peek(buf_indexOfBusyNote, numOfBusyNote-1), indexOfDeadNote);\n        }\n\n        poke(buf_indexOfBusyNote, 0, numOfBusyNote-1);\n        poke(buf_notesTable, 0, deadNoteNumber, 0);\n        poke(buf_numOfBusyNote, peek(buf_numOfBusyNote, 0)-1, 0);\n    }\n\n    return yL, yR;\n}\n\n//============================================================\n// buffers\n\nBuffer buf_notesTable(\"\");\nBuffer buf_indexOfBusyNote(\"\");\nBuffer buf_numOfBusyNote(\"\");\nBuffer buf_paramsOfNotes(\"\");\nBuffer buf_osc(\"\");\n\n//============================================================\n// main loop\n\nout1, out2 = polyAudioProcess(buf_notesTable, buf_indexOfBusyNote, buf_numOfBusyNote, buf_paramsOfNotes, buf_osc);",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 10.0, 10.0, 919.0, 430.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 450.0, 38.0, 21.0 ],
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
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 640.0, 140.0, 32.0, 21.0 ],
					"text" : "gen~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 10.0, 260.0, 242.0, 21.0 ],
					"text" : "buffer~ ---buf_paramsOfNotes @samps 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 10.0, 230.0, 230.0, 21.0 ],
					"text" : "buffer~ ---buf_numOfBusyNote @samps 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 10.0, 200.0, 254.0, 21.0 ],
					"text" : "buffer~ ---buf_indexOfBusyNote @samps 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.0, 42.0, 272.0, 59.0 ],
					"text" : "buf_notesTable ---buf_notesTable, buf_indexOfBusyNote ---buf_indexOfBusyNote, buf_numOfBusyNote ---buf_numOfBusyNote, buf_paramsOfNotes ---buf_paramsOfNotes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 360.0, 12.0, 56.0, 21.0 ],
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
					"patching_rect" : [ 10.0, 170.0, 248.0, 21.0 ],
					"text" : "buffer~ ---buf_notesTable 0 2 @samps 128"
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
						"rect" : [ 219.0, 333.0, 891.0, 480.0 ],
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
									"code" : "//============================================================\n// Polyphonic event management.\n// A note can have the following three states\n//   0 = free\n//   1 = busy\n//   2 = release\n// After the release, the dead notes are processed on the audio side.\n\n//============================================================\n// functions\n\ninitializeBufNotesTable(buf, sr)\n{\n    History init(1);\n\n    if(init==1 || change(sr))\n    {\n        for(itr=0; itr<dim(buf); itr+=1)\n        {\n            poke(buf, mtof(itr)/sr, itr, 1);\n        }\n\n        init = 0;\n    }\n\n    return 0;\n}\n\npolyEventManage(buf_notesTable, buf_indexOfBusyNote, buf_numOfBusyNote, buf_paramsOfNotes, pitch, velocity)\n{\n    stateOfTargetNote = peek(buf_notesTable, pitch, 0);\n\n    // note on\n    if(stateOfTargetNote==0)\n    {\n        // If there are any optional parameters, write them here.\n        // (for example, parameters of envelopes other than release time.)\n        \n        // update note state\n        numOfBusyNote = peek(buf_numOfBusyNote, 0);\n        poke(buf_notesTable, 1, pitch, 0);\n        poke(buf_indexOfBusyNote, pitch, numOfBusyNote);\n        poke(buf_numOfBusyNote, numOfBusyNote+1, 0);\n    }\n    else if(stateOfTargetNote==2)\n    {\n        // If there are any optional parameters, write them here.\n        // (for example, parameters of envelopes other than release time.)\n\n        // update note state\n        poke(buf_notesTable, 1, pitch, 0);\n    }\n    else\n    {\n        // note off\n        if(stateOfTargetNote==1)\n        {\n            // If there are any optional parameters, write them here.\n            // (for example, the release time of envelopes.)\n\n            // update note state\n            poke(buf_notesTable, 2, pitch, 0);\n        }\n    }\n    \n    return 0;\n}\n\n//============================================================\n// buffer\n\nBuffer buf_notesTable(\"\");\nBuffer buf_indexOfBusyNote(\"\");\nBuffer buf_numOfBusyNote(\"\");\nBuffer buf_paramsOfNotes(\"\");\n\n//============================================================\n// parameters\n\nParam sr(44100);\n\n//============================================================\n// main process\n\ninitializeBufNotesTable(buf_notesTable, sr);\npolyEventManage(buf_notesTable, buf_indexOfBusyNote, buf_numOfBusyNote, buf_paramsOfNotes, in1, in2);",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 40.0, 850.0, 430.0 ]
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
									"patching_rect" : [ 841.0, 10.0, 32.0, 21.0 ],
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
					"patching_rect" : [ 10.0, 140.0, 29.5, 21.0 ],
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
					"patching_rect" : [ 10.0, 10.0, 336.0, 53.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"midpoints" : [ 336.5, 126.0, 30.0, 126.0 ],
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
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"midpoints" : [ 652.0, 313.5, 674.0, 313.5 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 369.5, 37.0, 649.5, 37.0 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 369.5, 126.0, 649.5, 126.0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 369.5, 126.0, 19.5, 126.0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-15" : [ "live.gain~", "live.gain~", 0 ],
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
