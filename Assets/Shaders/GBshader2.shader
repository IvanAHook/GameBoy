// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:34731,y:32621,varname:node_9361,prsc:2|emission-9730-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32002,y:34240,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32002,y:34106,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31126,y:33808,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31126,y:33936,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:31126,y:34087,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:31338,y:33851,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:31338,y:34025,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT,B-9471-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:31733,y:34020,cmnt:Specular Contribution,varname:node_2746,prsc:2|A-7782-OUT,B-5267-OUT,C-4865-RGB;n:type:ShaderForge.SFN_Tex2d,id:851,x:31338,y:33503,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1941,x:31733,y:33847,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-544-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Color,id:5927,x:31338,y:33688,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Exp,id:1700,x:31338,y:34208,varname:node_1700,prsc:2,et:1|IN-9978-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:30797,y:34210,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Power,id:5267,x:31536,y:34094,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-1700-OUT;n:type:ShaderForge.SFN_Add,id:2159,x:32002,y:33966,cmnt:Combine,varname:node_2159,prsc:2|A-1941-OUT,B-2746-OUT;n:type:ShaderForge.SFN_Multiply,id:5085,x:32247,y:34106,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-2159-OUT,B-3406-RGB,C-8068-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:9978,x:31126,y:34210,varname:node_9978,prsc:2,a:1,b:11|IN-5328-OUT;n:type:ShaderForge.SFN_Color,id:4865,x:31536,y:34249,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:node_4865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32002,y:33800,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:32195,y:33752,cmnt:Ambient Light,varname:node_2460,prsc:2|A-544-OUT,B-7528-RGB;n:type:ShaderForge.SFN_Multiply,id:544,x:31536,y:33602,cmnt:Diffuse Color,varname:node_544,prsc:2|A-851-RGB,B-5927-RGB;n:type:ShaderForge.SFN_Vector1,id:2021,x:32330,y:32428,varname:node_2021,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8948,x:32330,y:32482,varname:node_8948,prsc:2,v1:160;n:type:ShaderForge.SFN_Vector1,id:2297,x:32330,y:32560,varname:node_2297,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8936,x:32330,y:32617,varname:node_8936,prsc:2,v1:144;n:type:ShaderForge.SFN_Divide,id:8448,x:32573,y:32364,varname:node_8448,prsc:2|A-2021-OUT,B-8948-OUT;n:type:ShaderForge.SFN_Divide,id:6200,x:32571,y:32630,varname:node_6200,prsc:2|A-2297-OUT,B-8936-OUT;n:type:ShaderForge.SFN_TexCoord,id:1294,x:32809,y:32502,varname:node_1294,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:7310,x:33538,y:32401,varname:node_7310,prsc:2|A-8215-OUT,B-6200-OUT;n:type:ShaderForge.SFN_Round,id:8215,x:33318,y:32318,varname:node_8215,prsc:2|IN-9726-OUT;n:type:ShaderForge.SFN_Multiply,id:1982,x:33538,y:32572,varname:node_1982,prsc:2|A-583-OUT,B-8448-OUT;n:type:ShaderForge.SFN_Round,id:583,x:33278,y:32650,varname:node_583,prsc:2|IN-4141-OUT;n:type:ShaderForge.SFN_Divide,id:9726,x:33041,y:32318,varname:node_9726,prsc:2|A-1294-U,B-8448-OUT;n:type:ShaderForge.SFN_Divide,id:4141,x:33074,y:32650,varname:node_4141,prsc:2|A-1294-V,B-6200-OUT;n:type:ShaderForge.SFN_Vector2,id:1850,x:33740,y:32327,varname:node_1850,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Vector2,id:3419,x:33708,y:32688,varname:node_3419,prsc:2,v1:0,v2:1;n:type:ShaderForge.SFN_Multiply,id:491,x:34067,y:32440,varname:node_491,prsc:2|A-1850-OUT,B-7310-OUT;n:type:ShaderForge.SFN_Multiply,id:8039,x:34051,y:32622,varname:node_8039,prsc:2|A-3419-OUT,B-1982-OUT;n:type:ShaderForge.SFN_Add,id:2127,x:34287,y:32596,varname:node_2127,prsc:2|A-491-OUT,B-8039-OUT;n:type:ShaderForge.SFN_Tex2d,id:8072,x:33713,y:32954,varname:node_8072,prsc:2,tex:fc28ecc2b61eca24ba1dbcf611528ee1,ntxv:0,isnm:False|UVIN-2127-OUT,TEX-1093-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1093,x:33713,y:33150,ptovrint:False,ptlb:Texture1,ptin:_Texture1,varname:node_1093,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fc28ecc2b61eca24ba1dbcf611528ee1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Desaturate,id:2882,x:33933,y:32954,varname:node_2882,prsc:2|COL-8072-RGB;n:type:ShaderForge.SFN_Posterize,id:9422,x:34147,y:32954,varname:node_9422,prsc:2|IN-2882-OUT,STPS-2256-OUT;n:type:ShaderForge.SFN_Vector1,id:2256,x:34135,y:33094,varname:node_2256,prsc:2,v1:8;n:type:ShaderForge.SFN_Multiply,id:9730,x:34376,y:32954,varname:node_9730,prsc:2|A-9422-OUT,B-9550-RGB;n:type:ShaderForge.SFN_Color,id:9550,x:34376,y:33122,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:node_9550,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.4191176,c3:0.767647,c4:1;proporder:851-5927-5328-4865-1093-9550;pass:END;sub:END;*/

Shader "Shader Forge/GBshader2" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Gloss ("Gloss", Range(0, 1)) = 0.5
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        _Texture1 ("Texture1", 2D) = "white" {}
        _Color1 ("Color1", Color) = (1,0.4191176,0.767647,1)
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
            uniform float4 _Color1;
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
                float node_6200 = (1.0/144.0);
                float2 node_2127 = ((float2(1,0)*(round((i.uv0.r/node_8448))*node_6200))+(float2(0,1)*(round((i.uv0.g/node_6200))*node_8448)));
                float4 node_8072 = tex2D(_Texture1,TRANSFORM_TEX(node_2127, _Texture1));
                float node_2256 = 8.0;
                float3 emissive = (floor(dot(node_8072.rgb,float3(0.3,0.59,0.11)) * node_2256) / (node_2256 - 1)*_Color1.rgb);
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
