// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:1,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:2865,x:33010,y:33144,varname:node_2865,prsc:2|emission-7425-OUT;n:type:ShaderForge.SFN_TexCoord,id:6793,x:31681,y:33697,varname:node_6793,prsc:2,uv:0;n:type:ShaderForge.SFN_ProjectionParameters,id:8707,x:31681,y:33912,varname:node_8707,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9496,x:31880,y:33744,varname:node_9496,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6793-UVOUT;n:type:ShaderForge.SFN_Append,id:6538,x:31880,y:33902,varname:node_6538,prsc:2|A-5896-OUT,B-8707-SGN;n:type:ShaderForge.SFN_Vector1,id:5896,x:31681,y:33858,varname:node_5896,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4177,x:32114,y:33799,varname:node_4177,prsc:2|A-9496-OUT,B-6538-OUT;n:type:ShaderForge.SFN_Tex2d,id:9388,x:32165,y:32580,varname:node_9388,prsc:2,ntxv:0,isnm:False|UVIN-3479-OUT,TEX-261-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:261,x:31370,y:32842,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_261,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:5091,x:31359,y:32669,varname:node_5091,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:3479,x:32165,y:32465,varname:node_3479,prsc:2|A-8156-OUT,B-5091-UVOUT;n:type:ShaderForge.SFN_Vector1,id:4643,x:31709,y:32419,varname:node_4643,prsc:2,v1:9999;n:type:ShaderForge.SFN_Tex2d,id:3713,x:32165,y:32834,varname:node_3713,prsc:2,ntxv:0,isnm:False|UVIN-6104-OUT,TEX-261-TEX;n:type:ShaderForge.SFN_Tex2d,id:1304,x:32165,y:33087,varname:node_1304,prsc:2,ntxv:0,isnm:False|UVIN-4825-OUT,TEX-261-TEX;n:type:ShaderForge.SFN_Append,id:7425,x:32521,y:32913,varname:node_7425,prsc:2|A-9388-R,B-3713-G,C-1304-B;n:type:ShaderForge.SFN_Add,id:6104,x:32165,y:32720,varname:node_6104,prsc:2|A-7859-OUT,B-5091-UVOUT;n:type:ShaderForge.SFN_Add,id:4825,x:32165,y:32971,varname:node_4825,prsc:2|A-9036-OUT,B-5091-UVOUT;n:type:ShaderForge.SFN_Vector1,id:91,x:31582,y:32512,varname:node_91,prsc:2,v1:-9999;n:type:ShaderForge.SFN_Vector1,id:8156,x:31370,y:33086,varname:node_8156,prsc:2,v1:0;n:type:ShaderForge.SFN_Time,id:4973,x:31279,y:32457,varname:node_4973,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:9571,x:31064,y:32254,varname:node_9571,prsc:2;n:type:ShaderForge.SFN_Sin,id:8013,x:31709,y:32279,varname:node_8013,prsc:2|IN-438-OUT;n:type:ShaderForge.SFN_Multiply,id:6665,x:31923,y:32298,varname:node_6665,prsc:2|A-8013-OUT,B-4643-OUT;n:type:ShaderForge.SFN_Append,id:4240,x:32082,y:32297,varname:node_4240,prsc:2|A-6665-OUT,B-6665-OUT;n:type:ShaderForge.SFN_Multiply,id:3699,x:31619,y:32623,varname:node_3699,prsc:2|A-8013-OUT,B-91-OUT;n:type:ShaderForge.SFN_Append,id:2176,x:31812,y:32672,varname:node_2176,prsc:2|A-3699-OUT,B-3699-OUT;n:type:ShaderForge.SFN_Multiply,id:5201,x:31622,y:32915,varname:node_5201,prsc:2|A-8013-OUT,B-8156-OUT;n:type:ShaderForge.SFN_Append,id:3456,x:31795,y:32915,varname:node_3456,prsc:2|A-5201-OUT,B-5201-OUT;n:type:ShaderForge.SFN_RemapRange,id:9940,x:31965,y:32672,varname:node_9940,prsc:2,frmn:0,frmx:1,tomn:-0.01,tomx:0.01|IN-2176-OUT;n:type:ShaderForge.SFN_RemapRange,id:6513,x:31888,y:32461,varname:node_6513,prsc:2,frmn:0,frmx:1,tomn:-0.01,tomx:0.01|IN-4240-OUT;n:type:ShaderForge.SFN_RemapRange,id:3883,x:31965,y:32915,varname:node_3883,prsc:2,frmn:0,frmx:1,tomn:-0.01,tomx:0.01|IN-3456-OUT;n:type:ShaderForge.SFN_Add,id:438,x:31327,y:32302,varname:node_438,prsc:2|A-9571-X,B-9571-Y,C-9571-W;n:type:ShaderForge.SFN_Vector1,id:9036,x:31720,y:33282,varname:node_9036,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Vector1,id:7859,x:31719,y:33215,varname:node_7859,prsc:2,v1:-0.02;proporder:261;pass:END;sub:END;*/

Shader "Shader Forge/GlitchPostShader" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
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
                float node_8156 = 0.0;
                float2 node_3479 = (node_8156+i.uv0);
                float4 node_9388 = tex2D(_MainTex,TRANSFORM_TEX(node_3479, _MainTex));
                float2 node_6104 = ((-0.02)+i.uv0);
                float4 node_3713 = tex2D(_MainTex,TRANSFORM_TEX(node_6104, _MainTex));
                float2 node_4825 = (0.01+i.uv0);
                float4 node_1304 = tex2D(_MainTex,TRANSFORM_TEX(node_4825, _MainTex));
                float3 emissive = float3(node_9388.r,node_3713.g,node_1304.b);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
