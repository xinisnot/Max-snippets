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
		"rect" : [ 590.0, 267.0, 460.0, 441.0 ],
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
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 110.0, 160.0, 74.0, 21.0 ],
					"text" : "normFreq $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 192.0, 160.0, 32.0, 21.0 ],
					"text" : "q $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 110.0, 100.0, 56.0, 21.0 ],
					"text" : "/ 22050."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 110.0, 10.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 110.0, 70.0, 32.0, 21.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 8.5, 380.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-7",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 10.0, 230.0, 28.0, 130.0 ],
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
					"format" : 6,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"maximum" : 25.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 192.0, 130.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-4",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 110.0, 130.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
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
						"rect" : [ 273.0, 573.0, 1038.0, 480.0 ],
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
									"code" : "//============================================================\n// Implementation of ve.moogLadder in Faust.\n// author \"Dario Sanfilippo\";\n// license \"MIT-style STK-4.3 license\"\n\n//============================================================\n// Documentation for ve.moogLadder.\r\n// https://github.com/grame-cncm/faustlibraries/blob/master/vaeffects.lib\n\n// Virtual analog model of the 4th-order Moog Ladder, which is arguably the \n// most well-known ladder filter in analog synthesizers. Several \n// 1st-order filters are cascaded in series. Feedback is then used, in part, to \n// control the cut-off frequency and the resonance.\n//\n// #### References\n//\n// [Zavalishin 2012] (revision 2.1.2, February 2020): \n//\n// * <https://www.native-instruments.com/fileadmin/ni_media/downloads/pdf/VAFilterDesign_2.1.2.pdf>\n//\n// This fix is based on Lorenzo Della Cioppa's correction to Pirkle's implementation; see this post: \n// https://www.kvraudio.com/forum/viewtopic.php?f=33&t=571909\n//\n// #### Usage\n//\n// ```\n// _ : moogLadder(normFreq,Q) : _\n// ```\n//\n// Where:\n//\n// * `normFreq`: normalized frequency (0-1)\n// * `Q`: quality factor between .707 (0 feedback coefficient) to 25 (feedback = 4, which is the self-oscillating threshold).\n\n//============================================================\n// Documentation for STK 4.3.0 License\n// https://github.com/grame-cncm/faustlibraries/blob/master/licenses/stk-4.3.0.md\n\n// The Synthesis ToolKit in C++ (STK) is a set of open source audio\n// signal processing and algorithmic synthesis classes written in the\n// C++ programming language. STK was designed to facilitate rapid\n// development of music synthesis and audio processing software, with\n// an emphasis on cross-platform functionality, realtime control,\n// ease of use, and educational example code.  STK currently runs\n// with realtime support (audio and MIDI) on Linux, Macintosh OS X,\n// and Windows computer platforms. Generic, non-realtime support has\n// been tested under NeXTStep, Sun, and other platforms and should\n// work with any standard C++ compiler.\n\n// STK GitHub site: https://github.com/thestk/stk\n// STK WWW site: http://ccrma.stanford.edu/software/stk/\n\n// The Synthesis ToolKit in C++ (STK)\n// Copyright (c) 1995--2021 Perry R. Cook and Gary P. Scavone\n\n// Permission is hereby granted, free of charge, to any person obtaining\n// a copy of this software and associated documentation files (the\n// \"Software\"), to deal in the Software without restriction, including\n// without limitation the rights to use, copy, modify, merge, publish,\n// distribute, sublicense, and/or sell copies of the Software, and to\n// permit persons to whom the Software is furnished to do so, subject to\n// the following conditions:\n\n// The above copyright notice and this permission notice shall be\n// included in all copies or substantial portions of the Software.\n\n// Any person wishing to distribute modifications to the Software is\n// asked to send the modifications to the original developer so that they\n// can be incorporated into the canonical version.  This is, however, not\n// a binding provision of this license.\n\n// THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,\n// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF\n// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.\n// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY\n// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,\n// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE\n// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n\n//============================================================\n// functions\n\nmoogLadder(x, normFreq, q)\n{\n    History s1(0);\n    History s2(0);\n    History s3(0);\n    History s4(0);\n\n    T = 1/SAMPLERATE;\n    cf = normFreq * 0.5 * SAMPLERATE;\n    k = 4.0 * (q - 0.707) / (25.0 - 0.707);\n    omegaWarp = tan(PI * cf * T);\n    g = omegaWarp / (1 + omegaWarp);\n    G = g * g * g * g;\n    S = g * g * g * (s1 * (1 - g)) + g * g * (s2 * (1 - g)) + g * (s3 * (1 - g)) + (s4 * (1 - g));\n\n    u = (x - k * S) / (1 + k * G);\n    v1 = g * (u - s1);\n    lp1 = v1 + s1;\n    v2 = g * (lp1 - s2);\n    lp2 = v2 + s2;\n    v3 = g * (lp2 - s3);\n    lp3 = v3 + s3;\n    v4 = g * (lp3 - s4);\n    lp4 = v4 + s4;\n    \n    s1 = v1 + lp1;\n    s2 = v2 + lp2;\n    s3 = v3 + lp3;\n    s4 = v4 + lp4;\n\n    return lp4;\n}\n\n//============================================================\n// parameters\n\nParam normFreq(0, min=0, max=1);\nParam q(0, min=0, max=25);\n\n//============================================================\n// main loop\n\nout1 = moogLadder(in1, normFreq, q);",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 40.0, 1020.0, 400.0 ]
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
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 10.0, 200.0, 40.0, 21.0 ],
					"text" : "gen~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 10.0, 160.0, 44.0, 21.0 ],
					"text" : "noise~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 119.5, 190.0, 19.5, 190.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 201.5, 190.0, 19.5, 190.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"midpoints" : [ 18.0, 369.5, 44.0, 369.5 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-7" : [ "live.gain~", "live.gain~", 0 ],
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
