// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:35514,y:33051,varname:node_9361,prsc:2|emission-5586-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32002,y:34240,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32002,y:34106,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31126,y:33808,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31126,y:33936,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:31126,y:34087,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:31338,y:33851,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:31338,y:34025,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT,B-9471-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:31733,y:34020,cmnt:Specular Contribution,varname:node_2746,prsc:2|A-7782-OUT,B-5267-OUT,C-4865-RGB;n:type:ShaderForge.SFN_Tex2d,id:851,x:31338,y:33503,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1941,x:31733,y:33847,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-544-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Color,id:5927,x:31338,y:33688,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Exp,id:1700,x:31338,y:34208,varname:node_1700,prsc:2,et:1|IN-9978-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:30797,y:34210,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Power,id:5267,x:31536,y:34094,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-1700-OUT;n:type:ShaderForge.SFN_Add,id:2159,x:32002,y:33966,cmnt:Combine,varname:node_2159,prsc:2|A-1941-OUT,B-2746-OUT;n:type:ShaderForge.SFN_Multiply,id:5085,x:32247,y:34106,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-2159-OUT,B-3406-RGB,C-8068-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:9978,x:31126,y:34210,varname:node_9978,prsc:2,a:1,b:11|IN-5328-OUT;n:type:ShaderForge.SFN_Color,id:4865,x:31536,y:34249,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:node_4865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32002,y:33800,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:32195,y:33752,cmnt:Ambient Light,varname:node_2460,prsc:2|A-544-OUT,B-7528-RGB;n:type:ShaderForge.SFN_Multiply,id:544,x:31536,y:33602,cmnt:Diffuse Color,varname:node_544,prsc:2|A-851-RGB,B-5927-RGB;n:type:ShaderForge.SFN_Vector1,id:2021,x:32330,y:32428,varname:node_2021,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8948,x:32330,y:32482,varname:node_8948,prsc:2,v1:160;n:type:ShaderForge.SFN_Vector1,id:2297,x:32330,y:32560,varname:node_2297,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8936,x:32330,y:32617,varname:node_8936,prsc:2,v1:160;n:type:ShaderForge.SFN_Divide,id:8448,x:32573,y:32364,varname:node_8448,prsc:2|A-2021-OUT,B-8948-OUT;n:type:ShaderForge.SFN_Divide,id:6200,x:32571,y:32630,varname:node_6200,prsc:2|A-2297-OUT,B-8936-OUT;n:type:ShaderForge.SFN_TexCoord,id:1294,x:32809,y:32502,varname:node_1294,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:7310,x:33538,y:32401,varname:node_7310,prsc:2|A-8215-OUT,B-6200-OUT;n:type:ShaderForge.SFN_Round,id:8215,x:33318,y:32318,varname:node_8215,prsc:2|IN-9726-OUT;n:type:ShaderForge.SFN_Multiply,id:1982,x:33538,y:32572,varname:node_1982,prsc:2|A-583-OUT,B-8448-OUT;n:type:ShaderForge.SFN_Round,id:583,x:33278,y:32650,varname:node_583,prsc:2|IN-4141-OUT;n:type:ShaderForge.SFN_Divide,id:9726,x:33041,y:32318,varname:node_9726,prsc:2|A-1294-U,B-8448-OUT;n:type:ShaderForge.SFN_Divide,id:4141,x:33074,y:32650,varname:node_4141,prsc:2|A-1294-V,B-6200-OUT;n:type:ShaderForge.SFN_Vector2,id:1850,x:33740,y:32327,varname:node_1850,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Vector2,id:3419,x:33708,y:32688,varname:node_3419,prsc:2,v1:0,v2:1;n:type:ShaderForge.SFN_Multiply,id:491,x:34067,y:32440,varname:node_491,prsc:2|A-1850-OUT,B-7310-OUT;n:type:ShaderForge.SFN_Multiply,id:8039,x:34051,y:32622,varname:node_8039,prsc:2|A-3419-OUT,B-1982-OUT;n:type:ShaderForge.SFN_Add,id:2127,x:34287,y:32596,varname:node_2127,prsc:2|A-491-OUT,B-8039-OUT;n:type:ShaderForge.SFN_Tex2d,id:8072,x:33610,y:32959,varname:node_8072,prsc:2,tex:fc28ecc2b61eca24ba1dbcf611528ee1,ntxv:0,isnm:False|UVIN-2127-OUT,TEX-1093-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1093,x:33301,y:32958,ptovrint:False,ptlb:Texture1,ptin:_Texture1,varname:node_1093,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fc28ecc2b61eca24ba1dbcf611528ee1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Desaturate,id:2882,x:33933,y:32954,varname:node_2882,prsc:2|COL-8072-RGB;n:type:ShaderForge.SFN_Posterize,id:9422,x:34147,y:32954,varname:node_9422,prsc:2|IN-2882-OUT,STPS-2256-OUT;n:type:ShaderForge.SFN_Vector1,id:2256,x:34135,y:33094,varname:node_2256,prsc:2,v1:8;n:type:ShaderForge.SFN_Multiply,id:9730,x:34503,y:32980,varname:node_9730,prsc:2|A-9422-OUT,B-9137-OUT;n:type:ShaderForge.SFN_Vector1,id:9137,x:34147,y:33199,varname:node_9137,prsc:2,v1:7;n:type:ShaderForge.SFN_Clamp01,id:7956,x:34655,y:32962,varname:node_7956,prsc:2|IN-9730-OUT;n:type:ShaderForge.SFN_Vector1,id:5729,x:34582,y:33285,varname:node_5729,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:3260,x:34925,y:32982,varname:node_3260,prsc:2|A-5126-RGB,B-3664-RGB,T-7956-OUT;n:type:ShaderForge.SFN_Subtract,id:4473,x:34604,y:33144,varname:node_4473,prsc:2|A-9730-OUT,B-5729-OUT;n:type:ShaderForge.SFN_Color,id:5126,x:33967,y:33317,ptovrint:False,ptlb:Darkest,ptin:_Darkest,varname:node_5126,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1544118,c2:0.06874643,c3:0.04314448,c4:1;n:type:ShaderForge.SFN_Color,id:3664,x:34147,y:33317,ptovrint:False,ptlb:Dark,ptin:_Dark,varname:node_3664,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2116148,c2:0.2426471,c3:0.0695826,c4:1;n:type:ShaderForge.SFN_Color,id:420,x:33967,y:33852,ptovrint:False,ptlb:Light,ptin:_Light,varname:node_420,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7396597,c2:0.5294118,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:1577,x:34147,y:33852,ptovrint:False,ptlb:Lightest,ptin:_Lightest,varname:node_1577,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9558824,c2:0.5201125,c3:0.9438612,c4:1;n:type:ShaderForge.SFN_Clamp01,id:3950,x:34790,y:33144,varname:node_3950,prsc:2|IN-4473-OUT;n:type:ShaderForge.SFN_Lerp,id:5476,x:34997,y:33159,varname:node_5476,prsc:2|A-3260-OUT,B-9861-RGB,T-3950-OUT;n:type:ShaderForge.SFN_Subtract,id:9023,x:34604,y:33357,varname:node_9023,prsc:2|A-9730-OUT,B-180-OUT;n:type:ShaderForge.SFN_Vector1,id:180,x:34582,y:33490,varname:node_180,prsc:2,v1:2;n:type:ShaderForge.SFN_Clamp01,id:8710,x:34790,y:33357,varname:node_8710,prsc:2|IN-9023-OUT;n:type:ShaderForge.SFN_Lerp,id:8081,x:34983,y:33357,varname:node_8081,prsc:2|A-5476-OUT,B-460-RGB,T-8710-OUT;n:type:ShaderForge.SFN_Vector1,id:2304,x:32715,y:32877,varname:node_2304,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:4448,x:32779,y:32941,varname:node_4448,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:9861,x:33967,y:33491,ptovrint:False,ptlb:node_9861,ptin:_node_9861,varname:node_9861,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1759485,c2:0.3455882,c3:0.1219723,c4:1;n:type:ShaderForge.SFN_Color,id:460,x:34147,y:33491,ptovrint:False,ptlb:node_460,ptin:_node_460,varname:node_460,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1339749,c2:0.4338235,c3:0.3225526,c4:1;n:type:ShaderForge.SFN_Color,id:5552,x:33967,y:33670,ptovrint:False,ptlb:node_5552,ptin:_node_5552,varname:node_5552,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2128028,c2:0.4576483,c3:0.6029412,c4:1;n:type:ShaderForge.SFN_Color,id:3191,x:34147,y:33670,ptovrint:False,ptlb:node_3191,ptin:_node_3191,varname:node_3191,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3892734,c2:0.4367394,c3:0.8823529,c4:1;n:type:ShaderForge.SFN_Subtract,id:7443,x:34604,y:33565,varname:node_7443,prsc:2|A-9730-OUT,B-3228-OUT;n:type:ShaderForge.SFN_Vector1,id:3228,x:34582,y:33694,varname:node_3228,prsc:2,v1:3;n:type:ShaderForge.SFN_Clamp01,id:1197,x:34775,y:33563,varname:node_1197,prsc:2|IN-7443-OUT;n:type:ShaderForge.SFN_Lerp,id:157,x:34983,y:33563,varname:node_157,prsc:2|A-8081-OUT,B-5552-RGB,T-1197-OUT;n:type:ShaderForge.SFN_Subtract,id:1174,x:34604,y:33773,varname:node_1174,prsc:2|A-9730-OUT,B-7191-OUT;n:type:ShaderForge.SFN_Vector1,id:7191,x:34582,y:33918,varname:node_7191,prsc:2,v1:4;n:type:ShaderForge.SFN_Clamp01,id:4840,x:34775,y:33773,varname:node_4840,prsc:2|IN-1174-OUT;n:type:ShaderForge.SFN_Lerp,id:3134,x:34969,y:33773,varname:node_3134,prsc:2|A-157-OUT,B-3191-RGB,T-4840-OUT;n:type:ShaderForge.SFN_Subtract,id:7506,x:34604,y:33996,varname:node_7506,prsc:2|A-9730-OUT,B-3565-OUT;n:type:ShaderForge.SFN_Vector1,id:3565,x:34583,y:34143,varname:node_3565,prsc:2,v1:5;n:type:ShaderForge.SFN_Subtract,id:5615,x:34583,y:34236,varname:node_5615,prsc:2|A-9730-OUT,B-5262-OUT;n:type:ShaderForge.SFN_Vector1,id:5262,x:34562,y:34373,varname:node_5262,prsc:2,v1:6;n:type:ShaderForge.SFN_Clamp01,id:5473,x:34793,y:33996,varname:node_5473,prsc:2|IN-7506-OUT;n:type:ShaderForge.SFN_Clamp01,id:9195,x:34776,y:34236,varname:node_9195,prsc:2|IN-5615-OUT;n:type:ShaderForge.SFN_Lerp,id:7257,x:34988,y:33996,varname:node_7257,prsc:2|A-3134-OUT,B-420-RGB,T-5473-OUT;n:type:ShaderForge.SFN_Lerp,id:5586,x:34988,y:34236,varname:node_5586,prsc:2|A-7257-OUT,B-1577-RGB,T-9195-OUT;proporder:851-5927-5328-4865-1093-5126-3664-420-1577-9861-460-5552-3191;pass:END;sub:END;*/

Shader "Shader Forge/GBshader" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Gloss ("Gloss", Range(0, 1)) = 0.5
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        _Texture1 ("Texture1", 2D) = "white" {}
        _Darkest ("Darkest", Color) = (0.1544118,0.06874643,0.04314448,1)
        _Dark ("Dark", Color) = (0.2116148,0.2426471,0.0695826,1)
        _Light ("Light", Color) = (0.7396597,0.5294118,1,1)
        _Lightest ("Lightest", Color) = (0.9558824,0.5201125,0.9438612,1)
        _node_9861 ("node_9861", Color) = (0.1759485,0.3455882,0.1219723,1)
        _node_460 ("node_460", Color) = (0.1339749,0.4338235,0.3225526,1)
        _node_5552 ("node_5552", Color) = (0.2128028,0.4576483,0.6029412,1)
        _node_3191 ("node_3191", Color) = (0.3892734,0.4367394,0.8823529,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Texture1; uniform float4 _Texture1_ST;
            uniform float4 _Darkest;
            uniform float4 _Dark;
            uniform float4 _Light;
            uniform float4 _Lightest;
            uniform float4 _node_9861;
            uniform float4 _node_460;
            uniform float4 _node_5552;
            uniform float4 _node_3191;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_8448 = (1.0/160.0);
                float node_6200 = (1.0/160.0);
                float2 node_2127 = ((float2(1,0)*(round((i.uv0.r/node_8448))*node_6200))+(float2(0,1)*(round((i.uv0.g/node_6200))*node_8448)));
                float4 node_8072 = tex2D(_Texture1,TRANSFORM_TEX(node_2127, _Texture1));
                float node_2256 = 8.0;
                float node_9730 = (floor(dot(node_8072.rgb,float3(0.3,0.59,0.11)) * node_2256) / (node_2256 - 1)*7.0);
                float3 emissive = lerp(lerp(lerp(lerp(lerp(lerp(lerp(_Darkest.rgb,_Dark.rgb,saturate(node_9730)),_node_9861.rgb,saturate((node_9730-1.0))),_node_460.rgb,saturate((node_9730-2.0))),_node_5552.rgb,saturate((node_9730-3.0))),_node_3191.rgb,saturate((node_9730-4.0))),_Light.rgb,saturate((node_9730-5.0))),_Lightest.rgb,saturate((node_9730-6.0)));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
