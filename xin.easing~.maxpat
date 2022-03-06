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
		"rect" : [ 296.0, 241.0, 379.0, 213.0 ],
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
					"id" : "obj-6",
					"maxclass" : "live.scope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 10.0, 110.0, 184.0, 68.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ricty",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 90.0, 10.0, 100.0, 16.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "linear", "iSine", "iQuad", "iCubic", "iQuart", "iQuint", "iExpo", "iCirc", "iBack", "iElastic", "iBounce", "oSine", "oQuad", "oCubic", "oQuart", "oQuint", "oExpo", "oCirc", "oBack", "oElastic", "oBounce", "ioSine", "ioQuad", "ioCubic", "ioQuart", "ioQuint", "ioExpo", "ioCirc", "ioBack", "ioElastic", "ioBounce" ],
							"parameter_longname" : "live.menu",
							"parameter_mmax" : 30,
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
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 30.0, 74.0, 21.0 ],
					"text" : "function $1"
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
						"rect" : [ 411.0, 195.0, 857.0, 480.0 ],
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
									"code" : "//============================================================\n// functions\n// https://gist.github.com/zeffii/c1e14dd6620ad855d81ec2e89a859719\n\nlinear(x)\n{\n    return x;\n}\n\niSine(x)\n{\n    return 1 - cycle(0.25*x, index=\"phase\");\n}\n\noSine(x)\n{\n    return cycle(0.25*x - 0.25, index=\"phase\");\n}\n\nioSine(x)\n{\n    return 0.5 * (1 - cycle(0.5*x, index=\"phase\"));\n}\n\niQuad(x)\n{\n    return x*x;\n}\n\noQuad(x)\n{\n    return -(x * (x - 2));\n}\n\nioQuad(x)\n{\n    y = 0;\n\n    if (x < 0.5)\n    {\n        y = 2*x*x;\n    }\n    else\n    {\n        y = -2*x*x + 4*x - 1;\n    }\n\n    return y;\n}\n\niCubic(x)\n{\n    return x*x*x;\n}\n\noCubic(x)\n{\n    t = x-1;\n    return 1 + t*t*t;\n}\n\nioCubic(x)\n{\n    y = 0;\n    \n    if(x<0.5)\n    {\n        y = 4*x*x*x;\n    }\n    else\n    {\n        t   = 2*x - 2;\n        y = 0.5*t*t*t + 1;\n    }\n\n    return y;\n}\n\niQuart(x)\n{\n    x2 = x*x;\n\n    return x2*x2;\n}\n\noQuart(x)\n{\n    t  = x-1;\n\n    return t*t*t*(1-x) + 1;\n}\n\nioQuart(x)\n{\n    y = 0;\n\n    if(x<0.5)\n    {\n        x2 = x*x;\n        y  = 8*x2*x2;\n    }\n    else\n    {\n        t  = x-1;\n        t2 = t*t;\n        y  = -8*t2*t2 + 1;\n    }\n\n    return y;\n}\n\niQuint(x)\n{\n    x2 = x*x;\n    return x2*x2*x;\n}\n\noQuint(x)\n{\n    t  = x-1;\n    t2 = t*t;\n    return t2*t2*t + 1;\n}\n\nioQuint(x)\n{\n    y = 0;\n\n    if(x<0.5)\n    {\n        x2 = x*x;\n        y  = 16*x2*x2*x;\n    }\n    else\n    {\n        t  = 2*x - 2;\n        t2 = t*t;\n        y  = 0.5*t2*t2*t + 1;\n    }\n\n    return y;\n}\n\niCirc(x)\n{\n    return 1 - sqrt(1-x*x);\n}\n\noCirc(x)\n{\n    return sqrt((2-x)*x);\n}\n\nioCirc(x)\n{\n    y = 0;\n    \n    if(x<0.5)\n    {\n        y = 0.5 * (1 - sqrt(1-4*x*x));\n    }\n    else\n    {\n        t = 2*x;\n        y = 0.5 * (sqrt(-(t-3) * (t-1)) + 1);\n    }\n\n    return y;\n}\n\niElastic(x)\n{\n    return cycle(3.25*x - 0.25, index=\"phase\") * pow(2, 10*(x-1));\n}\n\noElastic(x)\n{\n    return cycle(-3.25*(x+1) - 0.25, index=\"phase\") * pow(2, -10*x) + 1;\n}\n\nioElastic(x)\n{\n    y = 0;\n\n    if(x<0.5)\n    {\n        y = 0.5 * cycle(6.5*x - 0.25, index=\"phase\") * pow(2, 10*(2*x - 1));\n    }\n    else\n    {\n        y = 0.5 * (cycle(-3.25 * ((2*x - 1) + 1) - 0.25, index=\"phase\") * pow(2, -10 * (2*x - 1)) + 2);\n    }\n\n    return y;\n}\n\niExpo(x)\n{\n    return (x == 0) ? x : pow(2, 10 * (x - 1));\n}\n\noExpo(x)\n{\n    return (x == 1) ? x : 1 - pow(2, -10 * x);\n}\n\nioExpo(x)\n{\n    y = 0;\n\n    if (x == 0 || x == 1) y = x;\n    \n    if (x < 0.5)\n    {\n        y = 0.5 * pow(2, (20 * x) - 10);\n    }\n    else\n    {\n        y = -0.5 * pow(2, (-20 * x) + 10) + 1;\n    }\n\n    return y;\n}\n\niBack(x)\n{\n    return x*x*x - x*cycle(0.5*x - 0.25, index=\"phase\");\n}\n\noBack(x)\n{\n    t = (1 - x);\n    return 1 - (t*t*t - t*cycle(0.5*t - 0.25, index=\"phase\"));\n}\n\nioBack(x)\n{\n    y = 0;\n    if (x < 0.5)\n    {\n        t = 2 * x;\n        y = 0.5 * (t*t*t - t*cycle(0.5*t - 0.25, index=\"phase\"));\n    }\n    else\n    {\n        t = (1 - (2*x - 1));\n        y = 0.5 * (1 - (t*t*t - t*cycle(0.5*t - 0.25, index=\"phase\"))) + 0.5;\n    }\n\n    return y;\n}\n\niBounce(x)\n{\n    return 1 - oBounce(1-x);\n}\n\noBounce(x)\n{\n    y = 0;\n\n    if(x < 4/11)\n    {\n        y = 0.0625 * (121*x*x);\n    }\n    else if(x < 8/11)\n    {\n        y = 9.075*x*x - 9.9*x + 3.4;\n    }\n    else if(x < 9/10)\n    {\n        y = 4356/361*x*x - 35442/1805*x + 16061/1805;\n    }\n    else\n    {\n        y = 10.8*x*x - 513/25*x + 268/25;\n    }\n\n    return y;\n}\n\nioBounce(x)\n{\n    y = 0;\n\n    if(x < 0.5)\n    {\n        y = 0.5 * iBounce(x*2);\n    }\n    else\n    {\n        y = 0.5 * oBounce(x*2 - 1) + 0.5;\n    }\n\n    return y;\n}\n\neasing(x, type)\n{\n    y = 0;\n\n    if(type==0)         y = linear(x);\n    else if(type==1)    y = iSine(x);\n    else if(type==2)    y = iQuad(x);\n    else if(type==3)    y = iCubic(x);\n    else if(type==4)    y = iQuart(x);\n    else if(type==5)    y = iQuint(x);\n    else if(type==6)    y = iExpo(x);\n    else if(type==7)    y = iCirc(x);\n    else if(type==8)    y = iBack(x);\n    else if(type==9)    y = iElastic(x);\n    else if(type==10)   y = iBounce(x);\n    else if(type==11)   y = oSine(x);\n    else if(type==12)   y = oQuad(x);\n    else if(type==13)   y = oCubic(x);\n    else if(type==14)   y = oQuart(x);\n    else if(type==15)   y = oQuint(x);\n    else if(type==16)   y = oExpo(x);\n    else if(type==17)   y = oCirc(x);\n    else if(type==18)   y = oBack(x);\n    else if(type==19)   y = oElastic(x);\n    else if(type==20)   y = oBounce(x);\n    else if(type==21)   y = ioSine(x);\n    else if(type==22)   y = ioQuad(x);\n    else if(type==23)   y = ioCubic(x);\n    else if(type==24)   y = ioQuart(x);\n    else if(type==25)   y = ioQuint(x);\n    else if(type==26)   y = ioExpo(x);\n    else if(type==27)   y = ioCirc(x);\n    else if(type==28)   y = ioBack(x);\n    else if(type==29)   y = ioElastic(x);\n    else if(type==30)   y = ioBounce(x);\n\n    return y;\n}\n\n//============================================================\n// parameters\n\nParam function(0, min=0, max=30);\n\nout1 = easing(in1, int(function));",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 40.0, 830.0, 400.0 ]
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
					"patching_rect" : [ 10.0, 70.0, 32.0, 21.0 ],
					"text" : "gen~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 10.0, 10.0, 62.0, 21.0 ],
					"text" : "phasor~ 1"
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
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 99.5, 60.0, 19.5, 60.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-5" : [ "live.menu", "live.menu", 0 ],
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
