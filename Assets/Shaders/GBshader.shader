// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:1,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:4,bdst:1,dpts:6,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:2865,x:34083,y:32923,varname:node_2865,prsc:2|emission-7258-OUT;n:type:ShaderForge.SFN_TexCoord,id:6793,x:31775,y:32790,varname:node_6793,prsc:2,uv:0;n:type:ShaderForge.SFN_ProjectionParameters,id:8707,x:32159,y:34327,varname:node_8707,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9496,x:32413,y:33987,varname:node_9496,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1;n:type:ShaderForge.SFN_Append,id:6538,x:32358,y:34286,varname:node_6538,prsc:2|A-5896-OUT,B-8707-SGN;n:type:ShaderForge.SFN_Vector1,id:5896,x:32159,y:34268,varname:node_5896,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4177,x:32859,y:34051,varname:node_4177,prsc:2|A-9496-OUT,B-6538-OUT;n:type:ShaderForge.SFN_Color,id:4354,x:33328,y:32774,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.5,c3:0.7172413,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:4039,x:32485,y:33035,ptovrint:False,ptlb:Texture1,ptin:_Texture1,varname:node_4039,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fc28ecc2b61eca24ba1dbcf611528ee1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:6672,x:31071,y:32513,varname:node_6672,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8201,x:31050,y:32565,varname:node_8201,prsc:2,v1:160;n:type:ShaderForge.SFN_Vector1,id:3226,x:31041,y:32676,varname:node_3226,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1885,x:31020,y:32757,varname:node_1885,prsc:2,v1:144;n:type:ShaderForge.SFN_Divide,id:9944,x:31391,y:32528,varname:node_9944,prsc:2|A-6672-OUT,B-8201-OUT;n:type:ShaderForge.SFN_Divide,id:8094,x:31326,y:32763,varname:node_8094,prsc:2|A-3226-OUT,B-1885-OUT;n:type:ShaderForge.SFN_Divide,id:32,x:31748,y:32173,varname:node_32,prsc:2|A-6793-U,B-9944-OUT;n:type:ShaderForge.SFN_Round,id:4876,x:31943,y:32173,varname:node_4876,prsc:2|IN-32-OUT;n:type:ShaderForge.SFN_Multiply,id:6590,x:32182,y:32184,varname:node_6590,prsc:2|A-4876-OUT,B-8094-OUT;n:type:ShaderForge.SFN_Divide,id:5902,x:31577,y:33228,varname:node_5902,prsc:2|A-6793-V,B-8094-OUT;n:type:ShaderForge.SFN_Round,id:3242,x:31793,y:33228,varname:node_3242,prsc:2|IN-5902-OUT;n:type:ShaderForge.SFN_Multiply,id:6376,x:32044,y:33228,varname:node_6376,prsc:2|A-3242-OUT,B-9944-OUT;n:type:ShaderForge.SFN_Tex2d,id:3276,x:32698,y:32987,varname:node_3276,prsc:2,tex:fc28ecc2b61eca24ba1dbcf611528ee1,ntxv:0,isnm:False|UVIN-6242-OUT,TEX-4039-TEX;n:type:ShaderForge.SFN_Desaturate,id:2532,x:33573,y:33228,varname:node_2532,prsc:2|COL-3276-RGB;n:type:ShaderForge.SFN_Posterize,id:6630,x:33575,y:32907,varname:node_6630,prsc:2|IN-2532-OUT,STPS-8044-OUT;n:type:ShaderForge.SFN_Vector1,id:8044,x:33575,y:33050,varname:node_8044,prsc:2,v1:4;n:type:ShaderForge.SFN_Multiply,id:7258,x:33588,y:32745,varname:node_7258,prsc:2|A-4354-RGB,B-6630-OUT;n:type:ShaderForge.SFN_Vector2,id:7919,x:32448,y:32501,varname:node_7919,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Vector2,id:332,x:32479,y:32664,varname:node_332,prsc:2,v1:0,v2:1;n:type:ShaderForge.SFN_Multiply,id:5350,x:32730,y:32551,varname:node_5350,prsc:2|A-6590-OUT,B-7919-OUT;n:type:ShaderForge.SFN_Multiply,id:6366,x:32730,y:32664,varname:node_6366,prsc:2|A-6376-OUT,B-332-OUT;n:type:ShaderForge.SFN_Add,id:6242,x:32958,y:32636,varname:node_6242,prsc:2|A-5350-OUT,B-6366-OUT;n:type:ShaderForge.SFN_Multiply,id:6390,x:32972,y:33076,varname:node_6390,prsc:2|A-3276-RGB,B-4852-OUT;n:type:ShaderForge.SFN_Vector1,id:4852,x:32763,y:33253,varname:node_4852,prsc:2,v1:3;n:type:ShaderForge.SFN_Clamp01,id:6422,x:33173,y:33236,varname:node_6422,prsc:2|IN-6390-OUT;n:type:ShaderForge.SFN_Lerp,id:5158,x:33365,y:33339,varname:node_5158,prsc:2|T-6422-OUT;proporder:4354-4039;pass:END;sub:END;*/

Shader "Shader Forge/GBshader" {
    Properties {
        _Color ("Color", Color) = (1,0.5,0.7172413,1)
        _Texture1 ("Texture1", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend DstColor Zero
            Cull Off
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _Texture1; uniform float4 _Texture1_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = v.vertex;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float node_9944 = (1.0/160.0);
                float node_8094 = (1.0/144.0);
                float2 node_6242 = (((round((i.uv0.r/node_9944))*node_8094)*float2(1,0))+((round((i.uv0.g/node_8094))*node_9944)*float2(0,1)));
                float4 node_3276 = tex2D(_Texture1,TRANSFORM_TEX(node_6242, _Texture1));
                float node_8044 = 4.0;
                float3 emissive = (_Color.rgb*floor(dot(node_3276.rgb,float3(0.3,0.59,0.11)) * node_8044) / (node_8044 - 1));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _Texture1; uniform float4 _Texture1_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float node_9944 = (1.0/160.0);
                float node_8094 = (1.0/144.0);
                float2 node_6242 = (((round((i.uv0.r/node_9944))*node_8094)*float2(1,0))+((round((i.uv0.g/node_8094))*node_9944)*float2(0,1)));
                float4 node_3276 = tex2D(_Texture1,TRANSFORM_TEX(node_6242, _Texture1));
                float node_8044 = 4.0;
                o.Emission = (_Color.rgb*floor(dot(node_3276.rgb,float3(0.3,0.59,0.11)) * node_8044) / (node_8044 - 1));
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
