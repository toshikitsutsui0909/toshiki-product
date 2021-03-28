xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 130;
 0.00000;5.00000;0.00000;,
 0.90818;4.75528;-1.25000;,
 0.00000;4.75528;-1.54509;,
 0.00000;5.00000;0.00000;,
 1.46946;4.75528;-0.47746;,
 0.00000;5.00000;0.00000;,
 1.46946;4.75528;0.47746;,
 0.00000;5.00000;0.00000;,
 0.90818;4.75528;1.25000;,
 0.00000;5.00000;0.00000;,
 -0.00000;4.75528;1.54509;,
 0.00000;5.00000;0.00000;,
 -0.90818;4.75528;1.25000;,
 0.00000;5.00000;0.00000;,
 -1.46946;4.75528;0.47746;,
 0.00000;5.00000;0.00000;,
 -1.46946;4.75528;-0.47746;,
 0.00000;5.00000;0.00000;,
 -0.90818;4.75528;-1.25000;,
 0.00000;5.00000;0.00000;,
 0.00000;4.75528;-1.54509;,
 1.72746;4.04509;-2.37764;,
 0.00000;4.04509;-2.93893;,
 2.79508;4.04509;-0.90818;,
 2.79508;4.04509;0.90818;,
 1.72746;4.04509;2.37764;,
 -0.00000;4.04509;2.93893;,
 -1.72746;4.04509;2.37764;,
 -2.79508;4.04509;0.90818;,
 -2.79508;4.04509;-0.90818;,
 -1.72746;4.04509;-2.37764;,
 0.00000;4.04509;-2.93893;,
 2.37764;2.93893;-3.27254;,
 0.00000;2.93893;-4.04509;,
 3.84710;2.93893;-1.25000;,
 3.84710;2.93893;1.25000;,
 2.37764;2.93893;3.27254;,
 -0.00000;2.93893;4.04509;,
 -2.37764;2.93893;3.27254;,
 -3.84710;2.93893;1.25000;,
 -3.84710;2.93893;-1.25000;,
 -2.37764;2.93893;-3.27254;,
 0.00000;2.93893;-4.04509;,
 2.79508;1.54508;-3.84710;,
 0.00000;1.54508;-4.75528;,
 4.52254;1.54508;-1.46946;,
 4.52254;1.54508;1.46946;,
 2.79508;1.54508;3.84710;,
 -0.00000;1.54508;4.75528;,
 -2.79509;1.54508;3.84710;,
 -4.52254;1.54508;1.46946;,
 -4.52254;1.54508;-1.46946;,
 -2.79508;1.54508;-3.84711;,
 0.00000;1.54508;-4.75528;,
 2.93893;-0.00000;-4.04509;,
 0.00000;-0.00000;-5.00000;,
 4.75528;-0.00000;-1.54508;,
 4.75528;-0.00000;1.54509;,
 2.93893;-0.00000;4.04509;,
 -0.00000;-0.00000;5.00000;,
 -2.93893;-0.00000;4.04508;,
 -4.75528;-0.00000;1.54509;,
 -4.75528;-0.00000;-1.54509;,
 -2.93892;-0.00000;-4.04509;,
 0.00000;-0.00000;-5.00000;,
 2.79508;-1.54509;-3.84710;,
 0.00000;-1.54509;-4.75528;,
 4.52254;-1.54509;-1.46946;,
 4.52254;-1.54509;1.46946;,
 2.79508;-1.54509;3.84710;,
 -0.00000;-1.54509;4.75528;,
 -2.79509;-1.54509;3.84710;,
 -4.52254;-1.54509;1.46946;,
 -4.52254;-1.54509;-1.46946;,
 -2.79508;-1.54509;-3.84711;,
 0.00000;-1.54509;-4.75528;,
 2.37764;-2.93893;-3.27254;,
 0.00000;-2.93893;-4.04509;,
 3.84710;-2.93893;-1.25000;,
 3.84710;-2.93893;1.25000;,
 2.37764;-2.93893;3.27254;,
 -0.00000;-2.93893;4.04509;,
 -2.37764;-2.93893;3.27254;,
 -3.84710;-2.93893;1.25000;,
 -3.84710;-2.93893;-1.25000;,
 -2.37764;-2.93893;-3.27254;,
 0.00000;-2.93893;-4.04509;,
 1.72746;-4.04509;-2.37764;,
 0.00000;-4.04509;-2.93893;,
 2.79508;-4.04509;-0.90818;,
 2.79508;-4.04509;0.90818;,
 1.72746;-4.04509;2.37764;,
 -0.00000;-4.04509;2.93893;,
 -1.72746;-4.04509;2.37764;,
 -2.79508;-4.04509;0.90818;,
 -2.79508;-4.04509;-0.90818;,
 -1.72746;-4.04509;-2.37764;,
 0.00000;-4.04509;-2.93893;,
 0.90818;-4.75528;-1.25000;,
 0.00000;-4.75528;-1.54508;,
 1.46946;-4.75528;-0.47746;,
 1.46946;-4.75528;0.47746;,
 0.90818;-4.75528;1.25000;,
 -0.00000;-4.75528;1.54508;,
 -0.90818;-4.75528;1.25000;,
 -1.46946;-4.75528;0.47746;,
 -1.46946;-4.75528;-0.47746;,
 -0.90818;-4.75528;-1.25000;,
 0.00000;-4.75528;-1.54508;,
 0.00000;-4.75528;-1.54508;,
 0.90818;-4.75528;-1.25000;,
 0.00000;-5.00000;-0.00000;,
 1.46946;-4.75528;-0.47746;,
 0.00000;-5.00000;-0.00000;,
 1.46946;-4.75528;0.47746;,
 0.00000;-5.00000;-0.00000;,
 0.90818;-4.75528;1.25000;,
 0.00000;-5.00000;-0.00000;,
 -0.00000;-4.75528;1.54508;,
 0.00000;-5.00000;-0.00000;,
 -0.90818;-4.75528;1.25000;,
 0.00000;-5.00000;-0.00000;,
 -1.46946;-4.75528;0.47746;,
 0.00000;-5.00000;-0.00000;,
 -1.46946;-4.75528;-0.47746;,
 0.00000;-5.00000;-0.00000;,
 -0.90818;-4.75528;-1.25000;,
 0.00000;-5.00000;-0.00000;,
 0.00000;-4.75528;-1.54508;,
 0.00000;-5.00000;-0.00000;;
 
 100;
 3;0,1,2;,
 3;3,4,1;,
 3;5,6,4;,
 3;7,8,6;,
 3;9,10,8;,
 3;11,12,10;,
 3;13,14,12;,
 3;15,16,14;,
 3;17,18,16;,
 3;19,20,18;,
 4;2,1,21,22;,
 4;1,4,23,21;,
 4;4,6,24,23;,
 4;6,8,25,24;,
 4;8,10,26,25;,
 4;10,12,27,26;,
 4;12,14,28,27;,
 4;14,16,29,28;,
 4;16,18,30,29;,
 4;18,20,31,30;,
 4;22,21,32,33;,
 4;21,23,34,32;,
 4;23,24,35,34;,
 4;24,25,36,35;,
 4;25,26,37,36;,
 4;26,27,38,37;,
 4;27,28,39,38;,
 4;28,29,40,39;,
 4;29,30,41,40;,
 4;30,31,42,41;,
 4;33,32,43,44;,
 4;32,34,45,43;,
 4;34,35,46,45;,
 4;35,36,47,46;,
 4;36,37,48,47;,
 4;37,38,49,48;,
 4;38,39,50,49;,
 4;39,40,51,50;,
 4;40,41,52,51;,
 4;41,42,53,52;,
 4;44,43,54,55;,
 4;43,45,56,54;,
 4;45,46,57,56;,
 4;46,47,58,57;,
 4;47,48,59,58;,
 4;48,49,60,59;,
 4;49,50,61,60;,
 4;50,51,62,61;,
 4;51,52,63,62;,
 4;52,53,64,63;,
 4;55,54,65,66;,
 4;54,56,67,65;,
 4;56,57,68,67;,
 4;57,58,69,68;,
 4;58,59,70,69;,
 4;59,60,71,70;,
 4;60,61,72,71;,
 4;61,62,73,72;,
 4;62,63,74,73;,
 4;63,64,75,74;,
 4;66,65,76,77;,
 4;65,67,78,76;,
 4;67,68,79,78;,
 4;68,69,80,79;,
 4;69,70,81,80;,
 4;70,71,82,81;,
 4;71,72,83,82;,
 4;72,73,84,83;,
 4;73,74,85,84;,
 4;74,75,86,85;,
 4;77,76,87,88;,
 4;76,78,89,87;,
 4;78,79,90,89;,
 4;79,80,91,90;,
 4;80,81,92,91;,
 4;81,82,93,92;,
 4;82,83,94,93;,
 4;83,84,95,94;,
 4;84,85,96,95;,
 4;85,86,97,96;,
 4;88,87,98,99;,
 4;87,89,100,98;,
 4;89,90,101,100;,
 4;90,91,102,101;,
 4;91,92,103,102;,
 4;92,93,104,103;,
 4;93,94,105,104;,
 4;94,95,106,105;,
 4;95,96,107,106;,
 4;96,97,108,107;,
 3;109,110,111;,
 3;110,112,113;,
 3;112,114,115;,
 3;114,116,117;,
 3;116,118,119;,
 3;118,120,121;,
 3;120,122,123;,
 3;122,124,125;,
 3;124,126,127;,
 3;126,128,129;;
 
 MeshMaterialList {
  1;
  100;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  92;
  0.000000;1.000000;0.000000;,
  0.000000;0.951288;-0.308303;,
  0.181216;0.951288;-0.249423;,
  0.293214;0.951288;-0.095271;,
  0.293214;0.951288;0.095271;,
  0.181216;0.951288;0.249423;,
  -0.000000;0.951288;0.308303;,
  -0.181216;0.951288;0.249423;,
  -0.293214;0.951288;0.095271;,
  -0.293214;0.951288;-0.095271;,
  -0.181216;0.951288;-0.249423;,
  0.000000;0.809713;-0.586827;,
  0.344928;0.809713;-0.474753;,
  0.558105;0.809713;-0.181339;,
  0.558105;0.809713;0.181339;,
  0.344928;0.809713;0.474753;,
  -0.000000;0.809713;0.586827;,
  -0.344928;0.809713;0.474753;,
  -0.558105;0.809713;0.181339;,
  -0.558105;0.809713;-0.181339;,
  -0.344928;0.809713;-0.474753;,
  0.000000;0.588715;-0.808341;,
  0.475131;0.588715;-0.653961;,
  0.768778;0.588715;-0.249791;,
  0.768777;0.588715;0.249791;,
  0.475131;0.588715;0.653961;,
  -0.000000;0.588715;0.808340;,
  -0.475131;0.588715;0.653961;,
  -0.768777;0.588715;0.249791;,
  -0.768777;0.588715;-0.249791;,
  -0.475130;0.588715;-0.653961;,
  0.000000;0.309677;-0.950842;,
  0.558891;0.309677;-0.769247;,
  0.904304;0.309677;-0.293826;,
  0.904304;0.309677;0.293826;,
  0.558891;0.309677;0.769247;,
  -0.000000;0.309677;0.950842;,
  -0.558891;0.309677;0.769247;,
  -0.904304;0.309677;0.293826;,
  -0.904304;0.309677;-0.293826;,
  -0.558891;0.309677;-0.769247;,
  0.000000;-0.000000;-1.000000;,
  0.587785;-0.000000;-0.809017;,
  0.951056;-0.000000;-0.309017;,
  0.951057;-0.000000;0.309017;,
  0.587785;-0.000000;0.809017;,
  -0.000000;-0.000000;1.000000;,
  -0.587785;-0.000000;0.809017;,
  -0.951057;-0.000000;0.309017;,
  -0.951056;-0.000000;-0.309017;,
  -0.587785;-0.000000;-0.809017;,
  0.000000;-0.309677;-0.950842;,
  0.558891;-0.309677;-0.769247;,
  0.904304;-0.309677;-0.293826;,
  0.904304;-0.309677;0.293826;,
  0.558891;-0.309677;0.769247;,
  -0.000000;-0.309677;0.950842;,
  -0.558891;-0.309677;0.769247;,
  -0.904304;-0.309678;0.293826;,
  -0.904304;-0.309677;-0.293826;,
  -0.558891;-0.309677;-0.769247;,
  0.000000;-0.588715;-0.808340;,
  0.475131;-0.588715;-0.653961;,
  0.768778;-0.588715;-0.249791;,
  0.768777;-0.588715;0.249791;,
  0.475131;-0.588715;0.653961;,
  -0.000000;-0.588715;0.808340;,
  -0.475131;-0.588715;0.653961;,
  -0.768777;-0.588715;0.249791;,
  -0.768777;-0.588715;-0.249791;,
  -0.475130;-0.588715;-0.653961;,
  0.000000;-0.809713;-0.586827;,
  0.344928;-0.809713;-0.474753;,
  0.558105;-0.809713;-0.181339;,
  0.558105;-0.809713;0.181339;,
  0.344928;-0.809713;0.474753;,
  -0.000000;-0.809713;0.586827;,
  -0.344928;-0.809713;0.474753;,
  -0.558105;-0.809713;0.181339;,
  -0.558105;-0.809713;-0.181339;,
  -0.344928;-0.809713;-0.474753;,
  0.000000;-0.951288;-0.308303;,
  0.181216;-0.951288;-0.249423;,
  0.293214;-0.951288;-0.095271;,
  0.293214;-0.951288;0.095271;,
  0.181216;-0.951288;0.249423;,
  -0.000000;-0.951288;0.308303;,
  -0.181216;-0.951288;0.249423;,
  -0.293214;-0.951288;0.095271;,
  -0.293214;-0.951288;-0.095271;,
  -0.181216;-0.951288;-0.249423;,
  0.000000;-1.000000;-0.000000;;
  100;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,9,8;,
  3;0,10,9;,
  3;0,1,10;,
  4;1,2,12,11;,
  4;2,3,13,12;,
  4;3,4,14,13;,
  4;4,5,15,14;,
  4;5,6,16,15;,
  4;6,7,17,16;,
  4;7,8,18,17;,
  4;8,9,19,18;,
  4;9,10,20,19;,
  4;10,1,11,20;,
  4;11,12,22,21;,
  4;12,13,23,22;,
  4;13,14,24,23;,
  4;14,15,25,24;,
  4;15,16,26,25;,
  4;16,17,27,26;,
  4;17,18,28,27;,
  4;18,19,29,28;,
  4;19,20,30,29;,
  4;20,11,21,30;,
  4;21,22,32,31;,
  4;22,23,33,32;,
  4;23,24,34,33;,
  4;24,25,35,34;,
  4;25,26,36,35;,
  4;26,27,37,36;,
  4;27,28,38,37;,
  4;28,29,39,38;,
  4;29,30,40,39;,
  4;30,21,31,40;,
  4;31,32,42,41;,
  4;32,33,43,42;,
  4;33,34,44,43;,
  4;34,35,45,44;,
  4;35,36,46,45;,
  4;36,37,47,46;,
  4;37,38,48,47;,
  4;38,39,49,48;,
  4;39,40,50,49;,
  4;40,31,41,50;,
  4;41,42,52,51;,
  4;42,43,53,52;,
  4;43,44,54,53;,
  4;44,45,55,54;,
  4;45,46,56,55;,
  4;46,47,57,56;,
  4;47,48,58,57;,
  4;48,49,59,58;,
  4;49,50,60,59;,
  4;50,41,51,60;,
  4;51,52,62,61;,
  4;52,53,63,62;,
  4;53,54,64,63;,
  4;54,55,65,64;,
  4;55,56,66,65;,
  4;56,57,67,66;,
  4;57,58,68,67;,
  4;58,59,69,68;,
  4;59,60,70,69;,
  4;60,51,61,70;,
  4;61,62,72,71;,
  4;62,63,73,72;,
  4;63,64,74,73;,
  4;64,65,75,74;,
  4;65,66,76,75;,
  4;66,67,77,76;,
  4;67,68,78,77;,
  4;68,69,79,78;,
  4;69,70,80,79;,
  4;70,61,71,80;,
  4;71,72,82,81;,
  4;72,73,83,82;,
  4;73,74,84,83;,
  4;74,75,85,84;,
  4;75,76,86,85;,
  4;76,77,87,86;,
  4;77,78,88,87;,
  4;78,79,89,88;,
  4;79,80,90,89;,
  4;80,71,81,90;,
  3;81,82,91;,
  3;82,83,91;,
  3;83,84,91;,
  3;84,85,91;,
  3;85,86,91;,
  3;86,87,91;,
  3;87,88,91;,
  3;88,89,91;,
  3;89,90,91;,
  3;90,81,91;;
 }
 MeshTextureCoords {
  130;
  0.050000;0.000000;,
  0.100000;0.100000;,
  0.000000;0.100000;,
  0.150000;0.000000;,
  0.200000;0.100000;,
  0.250000;0.000000;,
  0.300000;0.100000;,
  0.350000;0.000000;,
  0.400000;0.100000;,
  0.450000;0.000000;,
  0.500000;0.100000;,
  0.550000;0.000000;,
  0.600000;0.100000;,
  0.650000;0.000000;,
  0.700000;0.100000;,
  0.750000;0.000000;,
  0.800000;0.100000;,
  0.850000;0.000000;,
  0.900000;0.100000;,
  0.950000;0.000000;,
  1.000000;0.100000;,
  0.100000;0.200000;,
  0.000000;0.200000;,
  0.200000;0.200000;,
  0.300000;0.200000;,
  0.400000;0.200000;,
  0.500000;0.200000;,
  0.600000;0.200000;,
  0.700000;0.200000;,
  0.800000;0.200000;,
  0.900000;0.200000;,
  1.000000;0.200000;,
  0.100000;0.300000;,
  0.000000;0.300000;,
  0.200000;0.300000;,
  0.300000;0.300000;,
  0.400000;0.300000;,
  0.500000;0.300000;,
  0.600000;0.300000;,
  0.700000;0.300000;,
  0.800000;0.300000;,
  0.900000;0.300000;,
  1.000000;0.300000;,
  0.100000;0.400000;,
  0.000000;0.400000;,
  0.200000;0.400000;,
  0.300000;0.400000;,
  0.400000;0.400000;,
  0.500000;0.400000;,
  0.600000;0.400000;,
  0.700000;0.400000;,
  0.800000;0.400000;,
  0.900000;0.400000;,
  1.000000;0.400000;,
  0.100000;0.500000;,
  0.000000;0.500000;,
  0.200000;0.500000;,
  0.300000;0.500000;,
  0.400000;0.500000;,
  0.500000;0.500000;,
  0.600000;0.500000;,
  0.700000;0.500000;,
  0.800000;0.500000;,
  0.900000;0.500000;,
  1.000000;0.500000;,
  0.100000;0.600000;,
  0.000000;0.600000;,
  0.200000;0.600000;,
  0.300000;0.600000;,
  0.400000;0.600000;,
  0.500000;0.600000;,
  0.600000;0.600000;,
  0.700000;0.600000;,
  0.800000;0.600000;,
  0.900000;0.600000;,
  1.000000;0.600000;,
  0.100000;0.700000;,
  0.000000;0.700000;,
  0.200000;0.700000;,
  0.300000;0.700000;,
  0.400000;0.700000;,
  0.500000;0.700000;,
  0.600000;0.700000;,
  0.700000;0.700000;,
  0.800000;0.700000;,
  0.900000;0.700000;,
  1.000000;0.700000;,
  0.100000;0.800000;,
  0.000000;0.800000;,
  0.200000;0.800000;,
  0.300000;0.800000;,
  0.400000;0.800000;,
  0.500000;0.800000;,
  0.600000;0.800000;,
  0.700000;0.800000;,
  0.800000;0.800000;,
  0.900000;0.800000;,
  1.000000;0.800000;,
  0.100000;0.900000;,
  0.000000;0.900000;,
  0.200000;0.900000;,
  0.300000;0.900000;,
  0.400000;0.900000;,
  0.500000;0.900000;,
  0.600000;0.900000;,
  0.700000;0.900000;,
  0.800000;0.900000;,
  0.900000;0.900000;,
  1.000000;0.900000;,
  0.000000;0.900000;,
  0.100000;0.900000;,
  0.050000;1.000000;,
  0.200000;0.900000;,
  0.150000;1.000000;,
  0.300000;0.900000;,
  0.250000;1.000000;,
  0.400000;0.900000;,
  0.350000;1.000000;,
  0.500000;0.900000;,
  0.450000;1.000000;,
  0.600000;0.900000;,
  0.550000;1.000000;,
  0.700000;0.900000;,
  0.650000;1.000000;,
  0.800000;0.900000;,
  0.750000;1.000000;,
  0.900000;0.900000;,
  0.850000;1.000000;,
  1.000000;0.900000;,
  0.950000;1.000000;;
 }
}
