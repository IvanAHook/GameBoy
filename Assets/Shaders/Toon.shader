// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:35389,y:32315,varname:node_9361,prsc:2|custl-4559-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32734,y:33086,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32734,y:32952,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31858,y:32654,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31858,y:32782,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:31858,y:32933,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:32070,y:32697,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:32070,y:32871,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:32465,y:32866,cmnt:Specular Contribution,varname:node_2746,prsc:2|A-7782-OUT,B-5267-OUT,C-4865-RGB;n:type:ShaderForge.SFN_Tex2d,id:851,x:32448,y:31925,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9064-OUT;n:type:ShaderForge.SFN_Multiply,id:1941,x:32465,y:32693,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-544-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Color,id:5927,x:32070,y:32534,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Exp,id:1700,x:32070,y:33054,varname:node_1700,prsc:2,et:1|IN-9978-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:31529,y:33056,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Power,id:5267,x:32268,y:32940,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-1700-OUT;n:type:ShaderForge.SFN_Add,id:2159,x:32734,y:32812,cmnt:Combine,varname:node_2159,prsc:2|A-1941-OUT,B-2746-OUT;n:type:ShaderForge.SFN_Multiply,id:5085,x:32979,y:32952,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-2159-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:9978,x:31858,y:33056,varname:node_9978,prsc:2,a:1,b:11|IN-5328-OUT;n:type:ShaderForge.SFN_Color,id:4865,x:32268,y:33095,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:node_4865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32734,y:32646,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:32927,y:32598,cmnt:Ambient Light,varname:node_2460,prsc:2|A-544-OUT,B-7528-RGB;n:type:ShaderForge.SFN_Multiply,id:544,x:32268,y:32448,cmnt:Diffuse Color,varname:node_544,prsc:2|B-5927-RGB;n:type:ShaderForge.SFN_NormalVector,id:9839,x:31345,y:31614,prsc:2,pt:False;n:type:ShaderForge.SFN_LightAttenuation,id:8575,x:31578,y:31858,varname:node_8575,prsc:2;n:type:ShaderForge.SFN_LightVector,id:9130,x:31345,y:31763,varname:node_9130,prsc:2;n:type:ShaderForge.SFN_Dot,id:2345,x:31564,y:31703,varname:node_2345,prsc:2,dt:4|A-9839-OUT,B-9130-OUT;n:type:ShaderForge.SFN_Multiply,id:6219,x:31799,y:31703,varname:node_6219,prsc:2|A-2345-OUT,B-8575-OUT;n:type:ShaderForge.SFN_Append,id:9064,x:32025,y:31703,varname:node_9064,prsc:2|A-6219-OUT,B-2215-OUT;n:type:ShaderForge.SFN_LightColor,id:4943,x:32431,y:32107,varname:node_4943,prsc:2;n:type:ShaderForge.SFN_Multiply,id:100,x:32765,y:31966,varname:node_100,prsc:2|A-851-RGB,B-4943-RGB;n:type:ShaderForge.SFN_Vector1,id:2215,x:31965,y:31848,varname:node_2215,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:5786,x:31486,y:31353,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_5786,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d3c21ed100759364dab80e052264229e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:1439,x:31640,y:31192,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1439,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:2726,x:31930,y:31282,varname:node_2726,prsc:2|A-1439-RGB,B-1243-RGB;n:type:ShaderForge.SFN_Tex2d,id:1243,x:31640,y:31353,varname:node_1243,prsc:2,tex:d3c21ed100759364dab80e052264229e,ntxv:0,isnm:False|TEX-5786-TEX;n:type:ShaderForge.SFN_AmbientLight,id:281,x:31930,y:31415,varname:node_281,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1350,x:32111,y:31354,varname:node_1350,prsc:2|B-281-RGB;n:type:ShaderForge.SFN_Multiply,id:80,x:32713,y:31737,varname:node_80,prsc:2|A-2726-OUT,B-9064-OUT;n:type:ShaderForge.SFN_Multiply,id:6778,x:32923,y:31762,varname:node_6778,prsc:2|A-80-OUT,B-100-OUT;n:type:ShaderForge.SFN_NormalVector,id:5243,x:34115,y:32361,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:7338,x:34109,y:32616,varname:node_7338,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:4775,x:34764,y:32066,varname:node_4775,prsc:2;n:type:ShaderForge.SFN_LightColor,id:6018,x:34978,y:32066,varname:node_6018,prsc:2;n:type:ShaderForge.SFN_VertexColor,id:2328,x:34526,y:32396,varname:node_2328,prsc:2;n:type:ShaderForge.SFN_Dot,id:3489,x:34317,y:32506,varname:node_3489,prsc:2,dt:4|A-5243-OUT,B-7338-OUT;n:type:ShaderForge.SFN_Append,id:8532,x:34538,y:32540,varname:node_8532,prsc:2|A-3489-OUT,B-3280-OUT;n:type:ShaderForge.SFN_Vector1,id:3280,x:34328,y:32665,varname:node_3280,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:4537,x:34614,y:32784,ptovrint:False,ptlb:Ramp2,ptin:_Ramp2,varname:node_4537,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False|UVIN-8532-OUT;n:type:ShaderForge.SFN_Multiply,id:9964,x:34837,y:32546,varname:node_9964,prsc:2|A-2328-RGB,B-4537-RGB;n:type:ShaderForge.SFN_Multiply,id:7968,x:35017,y:32252,varname:node_7968,prsc:2|A-6018-RGB,B-2468-OUT;n:type:ShaderForge.SFN_Multiply,id:4559,x:35113,y:32605,varname:node_4559,prsc:2|A-7968-OUT,B-4537-RGB;n:type:ShaderForge.SFN_Multiply,id:1009,x:35014,y:32778,varname:node_1009,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2468,x:34825,y:32252,varname:node_2468,prsc:2|A-4775-OUT,B-1197-OUT;n:type:ShaderForge.SFN_Vector1,id:1197,x:34541,y:32272,varname:node_1197,prsc:2,v1:0.5;proporder:851-5927-5328-4865-5786-1439-4537;pass:END;sub:END;*/

Shader "Shader Forge/Toon" {
    Properties {
        _Ramp ("Ramp", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Gloss ("Gloss", Range(0, 1)) = 0.5
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        _Texture ("Texture", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _Ramp2 ("Ramp2", 2D) = "gray" {}
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Ramp2; uniform float4 _Ramp2_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float2 node_8532 = float2(0.5*dot(i.normalDir,lightDirection)+0.5,0.0);
                float4 _Ramp2_var = tex2D(_Ramp2,TRANSFORM_TEX(node_8532, _Ramp2));
                float3 finalColor = ((_LightColor0.rgb*(attenuation*0.5))*_Ramp2_var.rgb);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Ramp2; uniform float4 _Ramp2_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float2 node_8532 = float2(0.5*dot(i.normalDir,lightDirection)+0.5,0.0);
                float4 _Ramp2_var = tex2D(_Ramp2,TRANSFORM_TEX(node_8532, _Ramp2));
                float3 finalColor = ((_LightColor0.rgb*(attenuation*0.5))*_Ramp2_var.rgb);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
