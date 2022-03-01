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
		"rect" : [ 994.0, 220.0, 640.0, 480.0 ],
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
					"id" : "obj-26",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 70.0, 110.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Ricty",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 330.0, 270.0, 150.0, 21.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"attr" : "sensitivity",
					"id" : "obj-21",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 230.0, 150.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "curve",
					"id" : "obj-22",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 200.0, 150.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "release",
					"id" : "obj-19",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 170.0, 150.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "sustain",
					"id" : "obj-20",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 140.0, 150.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "decay",
					"id" : "obj-18",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 110.0, 150.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "attack",
					"id" : "obj-17",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 80.0, 150.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 190.0, 38.0, 21.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "live.scope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 100.0, 283.5, 184.0, 68.0 ]
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
						"rect" : [ 296.0, 87.0, 729.0, 748.0 ],
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
									"code" : "//============================================================\n// function\n\ncurve(x, from, to, amt)\n{\n    // scale x from [from, to] to [0, 1]\n    y = (x-from) / (to-from);\n\n    if(amt>0)\n    {\n        y = exp(ln(y) * (1/(1-amt)));\n    }\n    else\n    {\n        y = exp(ln(y) * (1+amt));\n    }\n\n    // scale y from [0, 1] to [to, from]\n    return y * (to-from) + from;\n}\n\nADSREnvelopeGenerator(gate, attack, decay, sustain, release, curve, sensitivity)\n{\n    History yLinear(0);\n    History yCurve(0);\n    History dAttack(0);\n    History dDecay(0);\n    History dRelease(0);\n    History lPeak(0);\n    History lSustain(0);\n    History amtCurve(0);\n    History breakpoint(0);\n\n    // The state of the envelope generator is managed by breakpoint.\n    //  breakpoint==0 -> free\n    //  breakpoint==1 -> during the attack time\n    //  breakpoint==2 -> during the decay time\n    //  breakpoint==3 -> state of sustain\n    //  breakpoint==4 -> during the release time\n\n    if(gate!=0)\n    {\n        // when envelope generator is free\n        if(breakpoint==0)\n        {\n            lPeak       = 1 - (1-gate) * sensitivity;\n            yLinear     = 0;\n            dAttack     = lPeak            / mstosamps(attack);\n            dDecay      = (lSustain-lPeak) / mstosamps(decay);\n            lSustain    = lPeak * sustain;\n            amtCurve    = curve;\n            breakpoint  = 1;\n        }\n        // when envelope generator is during the release time\n        else if(breakpoint==4)\n        {\n            lPeak       = 1 - (1-gate) * sensitivity;\n            dAttack     = (lPeak-yLinear)  / mstosamps(attack);\n            dDecay      = (lSustain-lPeak) / mstosamps(decay);\n            lSustain    = lPeak * sustain;\n            amtCurve    = curve;\n            breakpoint  = 1;\n        }\n    }\n    else\n    {\n        // when envelope generator is state of sustain\n        if(breakpoint==3)\n        {\n            dRelease   = -lSustain / mstosamps(release);\n            breakpoint = 4;\n        }\n        // when envelope generator is during the attack or decay\n        else if(breakpoint==1 || breakpoint==2)\n        {\n            dRelease   = -yLinear / mstosamps(release);\n            breakpoint = 4;\n        }\n    }\n\n    y0 = yCurve;\n\n    // update of envelope generator\n    // when attack\n    if(breakpoint==1)\n    {\n        if(dAttack!=0)\n        {\n            yLinear = clip(yLinear+dAttack, 0, lPeak);\n            yCurve  = curve(yLinear, 0, lPeak, amtCurve);\n        }\n        else\n        {\n            yLinear = lPeak;\n            yCurve  = lPeak;\n        }\n\n        if(yLinear>=lPeak)\n        {\n            breakpoint = 2;\n        }\n    }\n    // when decay\n    else if(breakpoint==2)\n    {\n        if(dDecay!=0)\n        {\n            yLinear = clip(yLinear+dDecay, lSustain, lPeak);\n            yCurve  = curve(yLinear, lSustain, lPeak, amtCurve);\n        }\n        else\n        {\n            yLinear = lSustain;\n            yCurve  = lSustain;\n        }\n\n        if(yLinear<=lSustain)\n        {\n            breakpoint = 3;\n        }\n    }\n    // when sustain\n    else if(breakpoint==3)\n    {\n        yLinear = lSustain;\n        yCurve  = lSustain;\n    }\n    // when release\n    else if(breakpoint==4)\n    {\n        if(dRelease!=0)\n        {\n            yLinear = clip(yLinear+dRelease, 0, lSustain);\n            yCurve  = curve(yLinear, 0, lSustain, amtCurve);\n        }\n        else\n        {\n            yLinear = 0;\n            yCurve  = 0;\n        }\n\n        if(yLinear<=0)\n        {\n            breakpoint = 0;\n        }\n    }\r\n\r\n    return y0;\n}\n\n//============================================================\n// parameters\n\nParam attack(5, min=0);\nParam decay(80, min=0);\nParam sustain(0.25, min=0, max=1);\nParam release(300, min=0);\nParam curve(0, min=-1, max=1);\nParam sensitivity(1, min=0, max=1);\n\nout1 = ADSREnvelopeGenerator(in1, attack, decay, sustain, release, curve, sensitivity);",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 40.0, 700.0, 620.0 ]
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
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 670.0, 38.0, 21.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 160.0, 210.0, 32.0, 21.0 ],
					"text" : "gen~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-9",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 140.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 140.0, 110.0, 164.0, 21.0 ],
					"text" : "gen @expr in1*abs(noise())"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 80.0, 24.0, 24.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-17", 0 ]
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
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-22", 0 ]
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
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
