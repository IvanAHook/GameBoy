// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:35053,y:32817,varname:node_3138,prsc:2|emission-7836-OUT,voffset-1642-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2387,x:34393,y:33369,ptovrint:False,ptlb:RenderTexture,ptin:_RenderTexture,varname:node_2387,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f0f06eb4e60bb394c8577a16e19a3372,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7766,x:34393,y:33205,varname:node_7766,prsc:2,tex:f0f06eb4e60bb394c8577a16e19a3372,ntxv:0,isnm:False|TEX-2387-TEX;n:type:ShaderForge.SFN_TexCoord,id:5436,x:31328,y:32831,varname:node_5436,prsc:2,uv:0;n:type:ShaderForge.SFN_Subtract,id:8047,x:31655,y:32585,varname:node_8047,prsc:2|A-5436-UVOUT,B-7118-OUT;n:type:ShaderForge.SFN_Vector1,id:7118,x:31340,y:32775,varname:node_7118,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Dot,id:3128,x:31833,y:32585,varname:node_3128,prsc:2,dt:0|A-8047-OUT,B-8047-OUT;n:type:ShaderForge.SFN_Multiply,id:4206,x:32038,y:32585,varname:node_4206,prsc:2|A-8049-OUT,B-3128-OUT;n:type:ShaderForge.SFN_Vector1,id:8049,x:32038,y:32525,varname:node_8049,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Add,id:3250,x:32262,y:32598,varname:node_3250,prsc:2|A-1786-OUT,B-4206-OUT;n:type:ShaderForge.SFN_Vector1,id:1786,x:32249,y:32531,varname:node_1786,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:3415,x:32505,y:32725,varname:node_3415,prsc:2|A-3250-OUT,B-5436-UVOUT,C-4206-OUT,D-3929-OUT;n:type:ShaderForge.SFN_Slider,id:3929,x:32092,y:32366,ptovrint:False,ptlb:node_558_copy,ptin:_node_558_copy,varname:_node_558_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:1591,x:32490,y:32864,varname:node_1591,prsc:2|A-3415-OUT,B-5436-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:3301,x:32505,y:32531,varname:node_3301,prsc:2|IN-3929-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5024,x:32786,y:32846,varname:node_5024,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1591-OUT;n:type:ShaderForge.SFN_Step,id:696,x:33528,y:32676,varname:node_696,prsc:2|A-1475-OUT,B-5024-G;n:type:ShaderForge.SFN_Vector1,id:1475,x:33160,y:32972,varname:node_1475,prsc:2,v1:0.999;n:type:ShaderForge.SFN_Step,id:5676,x:33528,y:32820,varname:node_5676,prsc:2|A-1475-OUT,B-5024-R;n:type:ShaderForge.SFN_Vector1,id:7889,x:32995,y:32370,varname:node_7889,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Step,id:911,x:33531,y:32396,varname:node_911,prsc:2|A-7889-OUT,B-1525-OUT;n:type:ShaderForge.SFN_Step,id:5577,x:33531,y:32533,varname:node_5577,prsc:2|A-7889-OUT,B-5745-OUT;n:type:ShaderForge.SFN_Add,id:1945,x:33858,y:32654,varname:node_1945,prsc:2|A-911-OUT,B-5577-OUT,C-696-OUT,D-5676-OUT;n:type:ShaderForge.SFN_OneMinus,id:5707,x:34056,y:32654,varname:node_5707,prsc:2|IN-1945-OUT;n:type:ShaderForge.SFN_Clamp01,id:1642,x:34249,y:32654,varname:node_1642,prsc:2|IN-5707-OUT;n:type:ShaderForge.SFN_Multiply,id:7836,x:34555,y:32792,varname:node_7836,prsc:2|A-1642-OUT,B-7766-RGB;n:type:ShaderForge.SFN_OneMinus,id:5745,x:32963,y:32547,varname:node_5745,prsc:2|IN-5024-R;n:type:ShaderForge.SFN_OneMinus,id:1525,x:33205,y:32611,varname:node_1525,prsc:2|IN-5024-G;proporder:2387-3929;pass:END;sub:END;*/

Shader "Shader Forge/CrtShader" {
    Properties {
        _RenderTexture ("RenderTexture", 2D) = "white" {}
        _node_558_copy ("node_558_copy", Range(0, 1)) = 1
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _RenderTexture; uniform float4 _RenderTexture_ST;
            uniform float _node_558_copy;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float node_7889 = 0.9;
                float2 node_8047 = (o.uv0-0.5);
                float node_4206 = (0.8*dot(node_8047,node_8047));
                float2 node_3415 = ((1.0+node_4206)*o.uv0*node_4206*_node_558_copy);
                float2 node_5024 = (node_3415+o.uv0).rg;
                float node_1475 = 0.999;
                float node_1642 = saturate((1.0 - (step(node_7889,(1.0 - node_5024.g))+step(node_7889,(1.0 - node_5024.r))+step(node_1475,node_5024.g)+step(node_1475,node_5024.r))));
                v.vertex.xyz += float3(node_1642,node_1642,node_1642);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_7889 = 0.9;
                float2 node_8047 = (i.uv0-0.5);
                float node_4206 = (0.8*dot(node_8047,node_8047));
                float2 node_3415 = ((1.0+node_4206)*i.uv0*node_4206*_node_558_copy);
                float2 node_5024 = (node_3415+i.uv0).rg;
                float node_1475 = 0.999;
                float node_1642 = saturate((1.0 - (step(node_7889,(1.0 - node_5024.g))+step(node_7889,(1.0 - node_5024.r))+step(node_1475,node_5024.g)+step(node_1475,node_5024.r))));
                float4 node_7766 = tex2D(_RenderTexture,TRANSFORM_TEX(i.uv0, _RenderTexture));
                float3 emissive = (node_1642*node_7766.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _node_558_copy;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float node_7889 = 0.9;
                float2 node_8047 = (o.uv0-0.5);
                float node_4206 = (0.8*dot(node_8047,node_8047));
                float2 node_3415 = ((1.0+node_4206)*o.uv0*node_4206*_node_558_copy);
                float2 node_5024 = (node_3415+o.uv0).rg;
                float node_1475 = 0.999;
                float node_1642 = saturate((1.0 - (step(node_7889,(1.0 - node_5024.g))+step(node_7889,(1.0 - node_5024.r))+step(node_1475,node_5024.g)+step(node_1475,node_5024.r))));
                v.vertex.xyz += float3(node_1642,node_1642,node_1642);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
