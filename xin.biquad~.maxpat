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
		"rect" : [ 59.0, 104.0, 327.0, 400.0 ],
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
					"fontname" : "Ricty",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 110.0, 80.0, 80.0, 16.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "lowpass", "highpass", "bandpass", "notch", "peak", "lowshelf", "highshelf" ],
							"parameter_longname" : "live.menu",
							"parameter_mmax" : 6,
							"parameter_shortname" : "live.menu",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-17",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 77.5, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-15",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 77.5, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 260.0, 107.5, 50.0, 21.0 ],
					"text" : "gain $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 107.5, 32.0, 21.0 ],
					"text" : "q $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 110.0, 107.5, 50.0, 21.0 ],
					"text" : "type $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 40.0, 80.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 340.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 10.0, 180.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -70 ],
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
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 10.0, 10.0, 44.0, 21.0 ],
					"text" : "noise~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
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
						"rect" : [ 1008.0, 87.0, 758.0, 480.0 ],
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
									"code" : "//============================================================\n// functions\n// The coefficients of the biquad filter are calculated based on the Nigel Redmon formula.\n// https://www.earlevel.com/main/2011/01/02/biquad-formulas/\n\ngetCoeffLP(K, Q)\n{\n    norm = 1 / (1 + K / Q + K * K);\n    a0 = K * K * norm;\n    a1 = 2 * a0;\n    a2 = a0;\n    b1 = 2 * (K * K - 1) * norm;\n    b2 = (1 - K / Q + K * K) * norm;\n\n    return a0, a1, a2, b1, b2;\n}\n\ngetCoeffHP(K, Q)\n{\n    norm = 1 / (1 + K / Q + K * K);\n    a0 = 1 * norm;\n    a1 = -2 * a0;\n    a2 = a0;\n    b1 = 2 * (K * K - 1) * norm;\n    b2 = (1 - K / Q + K * K) * norm;\n\n    return a0, a1, a2, b1, b2;\n}\n\ngetCoeffBP(K, Q)\n{\n    norm = 1 / (1 + K / Q + K * K);\n    a0 = K / Q * norm;\n    a1 = 0;\n    a2 = -a0;\n    b1 = 2 * (K * K - 1) * norm;\n    b2 = (1 - K / Q + K * K) * norm;\n\n    return a0, a1, a2, b1, b2;\n}\n\ngetCoeffNotch(K, Q)\n{\n    norm = 1 / (1 + K / Q + K * K);\n    a0 = (1 + K * K) * norm;\n    a1 = 2 * (K * K - 1) * norm;\n    a2 = a0;\n    b1 = a1;\n    b2 = (1 - K / Q + K * K) * norm;\n\n    return a0, a1, a2, b1, b2;\n}\n\ngetCoeffPeak(V, K, Q, gain)\n{\n    a0 = 0;\n    a1 = 0;\n    a2 = 0;\n    b1 = 0;\n    b2 = 0;\n\n    if (gain >= 0)\n    {\n        // boost\n        norm = 1 / (1 + 1/Q * K + K * K);\n        a0 = (1 + V/Q * K + K * K) * norm;\n        a1 = 2 * (K * K - 1) * norm;\n        a2 = (1 - V/Q * K + K * K) * norm;\n        b1 = a1;\n        b2 = (1 - 1/Q * K + K * K) * norm;\n    }\n    else\n    {\n        // cut\n        norm = 1 / (1 + V/Q * K + K * K);\n        a0 = (1 + 1/Q * K + K * K) * norm;\n        a1 = 2 * (K * K - 1) * norm;\n        a2 = (1 - 1/Q * K + K * K) * norm;\n        b1 = a1;\n        b2 = (1 - V/Q * K + K * K) * norm;\n    }\n\n    return a0, a1, a2, b1, b2;\n}\n\ngetCoeffLS(V, K, gain)\n{\n    a0 = 0;\n    a1 = 0;\n    a2 = 0;\n    b1 = 0;\n    b2 = 0;\n\n    if (gain >= 0)\n    {\n        // boost\n        norm = 1 / (1 +sqrt2 * K + K * K);\n        a0 = (1 + sqrt(2*V) * K + V * K * K) * norm;\n        a1 = 2 * (V * K * K - 1) * norm;\n        a2 = (1 - sqrt(2*V) * K + V * K * K) * norm;\n        b1 = 2 * (K * K - 1) * norm;\n        b2 = (1 - sqrt2 * K + K * K) * norm;\n    }\n    else\n    {\n        // cut\n        norm = 1 / (1 + sqrt(2*V) * K + V * K * K);\n        a0 = (1 + sqrt2 * K + K * K) * norm;\n        a1 = 2 * (K * K - 1) * norm;\n        a2 = (1 - sqrt2 * K + K * K) * norm;\n        b1 = 2 * (V * K * K - 1) * norm;\n        b2 = (1 - sqrt(2*V) * K + V * K * K) * norm;\n    }\n\n    return a0, a1, a2, b1, b2;\n}\n\ngetCoeffHS(V, K, gain)\n{\n    a0 = 0;\n    a1 = 0;\n    a2 = 0;\n    b1 = 0;\n    b2 = 0;\n\n    if (gain >= 0)\n    {\n        // boost\n        norm = 1 / (1 + sqrt2 * K + K * K);\n        a0 = (V + sqrt(2*V) * K + K * K) * norm;\n        a1 = 2 * (K * K - V) * norm;\n        a2 = (V - sqrt(2*V) * K + K * K) * norm;\n        b1 = 2 * (K * K - 1) * norm;\n        b2 = (1 - sqrt2 * K + K * K) * norm;\n    }\n    else\n    {\n        // cut\n        norm = 1 / (V + sqrt(2*V) * K + K * K);\n        a0 = (1 + sqrt2 * K + K * K) * norm;\n        a1 = 2 * (K * K - 1) * norm;\n        a2 = (1 - sqrt2 * K + K * K) * norm;\n        b1 = 2 * (K * K - V) * norm;\n        b2 = (V - sqrt(2*V) * K + K * K) * norm;\n    }\n\n    return a0, a1, a2, b1, b2;\n}\n\ngetCoeff(fc, Q, gain, type)\n{\n    History type1(0);\n    History fc1(0);\n    History Q1(0);\n    History gain1(0);\n\n    History a0(0);\n    History a1(0);\n    History a2(0);\n    History b1(0);\n    History b2(0);\n\n    if(type!=type1 || fc!=fc1 || Q!=Q1 || gain!=gain1)\n    {\n        V   = dbtoa(abs(gain));\n        K   = tan(pi * fc/samplerate);\n\n        if(type==0)         a0, a1, a2, b1, b2 = getCoeffLP(K, Q);\n        else if(type==1)    a0, a1, a2, b1, b2 = getCoeffHP(K, Q);\n        else if(type==2)    a0, a1, a2, b1, b2 = getCoeffBP(K, Q);\n        else if(type==3)    a0, a1, a2, b1, b2 = getCoeffNotch(K, Q);\n        else if(type==4)    a0, a1, a2, b1, b2 = getCoeffPeak(V, K, Q, gain);\n        else if(type==5)    a0, a1, a2, b1, b2 = getCoeffLS(V, K, gain);\n        else if(type==6)    a0, a1, a2, b1, b2 = getCoeffHS(V, K, gain);\n    }\n\n    type1 = type;\n    fc1   = fc;\n    Q1    = Q;\n    gain1 = gain;\n\n    return a0, a1, a2, b1, b2;\n}\n\nbiquad(x, cutoff, q, gain, type)\n{\n    History x1(0);\n    History x2(0);\n    History y1(0);\n    History y2(0);\n\n    a0, a1, a2, b1, b2 = getCoeff(cutoff, q, gain, type);\n\n    y = (x*a0 + x1*a1 + x2*a2) - (y1*b1 + y2*b2);\n\n    x2 = x1;\n    x1 = x;\n    y2 = y1;\n    y1 = y;\n\n    return y;\n}\n\n//============================================================\n// parameters\n\nParam type(0, min=0, max=6);\nParam q(0.707, min=0.01);\nParam gain(0);\n\n//============================================================\n// main loop\n\nout1 =biquad(in1, in2, q, gain, type);",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 40.0, 720.0, 400.0 ]
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
									"patching_rect" : [ 711.0, 10.0, 32.0, 21.0 ],
									"text" : "in 2"
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
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 10.0, 150.0, 49.0, 21.0 ],
					"text" : "gen~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 209.5, 138.75, 19.5, 138.75 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 269.5, 138.75, 19.5, 138.75 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"midpoints" : [ 19.5, 327.5, 45.5, 327.5 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 119.5, 138.75, 19.5, 138.75 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-18" : [ "live.menu", "live.menu", 0 ],
			"obj-3" : [ "live.gain~", "live.gain~", 0 ],
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
