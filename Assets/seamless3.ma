//Maya ASCII 2014 scene
//Name: seamless3.ma
//Last modified: Fri, Oct 24, 2014 12:54:28 AM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.8.4";
fileInfo "license" "student";
createNode transform -n "polySurface33";
	setAttr ".t" -type "double3" 0 2.8359273893599468 0 ;
createNode mesh -n "polySurfaceShape33" -p "polySurface33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode polyPlanarProj -n "polyPlanarProj32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[2700:2701]" "f[4922:4923]" "f[7504:7505]" "f[10326:10327]" "f[10928:10929]" "f[13150:13151]" "f[15852:15853]" "f[18554:18555]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2.2649999782443047 0.39780000224709511 0.22145000100135803 ;
	setAttr ".ps" -type "double2" 4.4579999595880508 0.83880000561475754 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode bevelPlus -n "bevelPlus33";
	setAttr ".bin" yes;
	setAttr ".w" -0.0084;
	setAttr ".d" 0.104;
	setAttr ".ed" 0.2349;
	setAttr ".cap" 4;
	setAttr ".oc" yes;
	setAttr ".no" yes;
	setAttr ".ucr" no;
createNode makeTextCurves -n "textForBevel33";
	setAttr ".t" -type "string" "seamless";
	setAttr ".f" -type "string" "Marion Bold";
createNode styleCurve -n "innerStyleCurve33";
	setAttr ".s" 5;
createNode styleCurve -n "outerStyleCurve33";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyPlanarProj32.out" "polySurfaceShape33.i";
connectAttr "bevelPlus33.op" "polyPlanarProj32.ip";
connectAttr "polySurfaceShape33.wm" "polyPlanarProj32.mp";
connectAttr "textForBevel33.oc" "bevelPlus33.ics";
connectAttr "textForBevel33.c" "bevelPlus33.c";
connectAttr "textForBevel33.p" "bevelPlus33.p";
connectAttr "innerStyleCurve33.oc" "bevelPlus33.isc";
connectAttr "outerStyleCurve33.oc" "bevelPlus33.osc";
connectAttr "polySurfaceShape33.iog" ":initialShadingGroup.dsm" -na;
// End of seamless3.ma
