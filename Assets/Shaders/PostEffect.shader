// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:1,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:4,bdst:1,dpts:6,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:2865,x:36378,y:32781,varname:node_2865,prsc:2|custl-3347-OUT;n:type:ShaderForge.SFN_TexCoord,id:6793,x:31584,y:33265,varname:node_6793,prsc:2,uv:0;n:type:ShaderForge.SFN_ProjectionParameters,id:8707,x:31403,y:34609,varname:node_8707,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9496,x:31729,y:34412,varname:node_9496,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1;n:type:ShaderForge.SFN_Append,id:6538,x:31729,y:34577,varname:node_6538,prsc:2|A-5896-OUT,B-8707-SGN;n:type:ShaderForge.SFN_Vector1,id:5896,x:31413,y:34521,varname:node_5896,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4177,x:31918,y:34441,varname:node_4177,prsc:2|A-9496-OUT,B-6538-OUT;n:type:ShaderForge.SFN_Color,id:4354,x:31949,y:34183,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.427451,c2:0.6784314,c3:0.5411765,c4:1;n:type:ShaderForge.SFN_Subtract,id:3113,x:31911,y:33019,varname:node_3113,prsc:2|A-6793-UVOUT,B-1467-OUT;n:type:ShaderForge.SFN_Vector1,id:1467,x:31596,y:33209,varname:node_1467,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Dot,id:4686,x:32089,y:33019,varname:node_4686,prsc:2,dt:0|A-3113-OUT,B-3113-OUT;n:type:ShaderForge.SFN_Multiply,id:2584,x:32294,y:33019,varname:node_2584,prsc:2|A-1933-OUT,B-4686-OUT;n:type:ShaderForge.SFN_Vector1,id:1933,x:32294,y:32959,varname:node_1933,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Add,id:7040,x:32474,y:33019,varname:node_7040,prsc:2|A-2758-OUT,B-2584-OUT;n:type:ShaderForge.SFN_Vector1,id:2758,x:32505,y:32965,varname:node_2758,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5033,x:32761,y:33159,varname:node_5033,prsc:2|A-7040-OUT,B-6793-UVOUT,C-2584-OUT,D-558-OUT;n:type:ShaderForge.SFN_Slider,id:558,x:32348,y:32800,ptovrint:False,ptlb:node_558,ptin:_node_558,varname:node_558,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:9480,x:32746,y:33298,varname:node_9480,prsc:2|A-5033-OUT,B-6793-UVOUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6645,x:34465,y:33074,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:node_6645,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ccb7401a794a08745ac7cab0bab32353,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3457,x:34754,y:32990,cmnt:RED,varname:node_3457,prsc:2,tex:ccb7401a794a08745ac7cab0bab32353,ntxv:0,isnm:False|UVIN-5310-UVOUT,TEX-6645-TEX;n:type:ShaderForge.SFN_Tex2d,id:5322,x:34754,y:33131,cmnt:GREEN,varname:node_5322,prsc:2,tex:ccb7401a794a08745ac7cab0bab32353,ntxv:0,isnm:False|UVIN-8995-UVOUT,TEX-6645-TEX;n:type:ShaderForge.SFN_Tex2d,id:1236,x:34754,y:33280,cmnt:BLUE,varname:node_1236,prsc:2,tex:ccb7401a794a08745ac7cab0bab32353,ntxv:0,isnm:False|UVIN-7187-UVOUT,TEX-6645-TEX;n:type:ShaderForge.SFN_OneMinus,id:1625,x:32761,y:32965,varname:node_1625,prsc:2|IN-558-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7122,x:33052,y:33172,varname:node_7122,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9480-OUT;n:type:ShaderForge.SFN_Step,id:5773,x:33546,y:32651,varname:node_5773,prsc:2|A-7013-OUT,B-7122-G;n:type:ShaderForge.SFN_Vector1,id:7013,x:32996,y:32617,varname:node_7013,prsc:2,v1:0.999;n:type:ShaderForge.SFN_Step,id:3051,x:33546,y:32784,varname:node_3051,prsc:2|A-7013-OUT,B-7122-R;n:type:ShaderForge.SFN_Vector1,id:2668,x:32996,y:32551,varname:node_2668,prsc:2,v1:0.001;n:type:ShaderForge.SFN_Step,id:6036,x:33549,y:32371,varname:node_6036,prsc:2|A-7122-G,B-2668-OUT;n:type:ShaderForge.SFN_Step,id:5141,x:33549,y:32508,varname:node_5141,prsc:2|A-7122-R,B-2668-OUT;n:type:ShaderForge.SFN_Add,id:5391,x:33864,y:32567,varname:node_5391,prsc:2|A-6036-OUT,B-5141-OUT,C-5773-OUT,D-3051-OUT;n:type:ShaderForge.SFN_OneMinus,id:5669,x:34054,y:32567,varname:node_5669,prsc:2|IN-5391-OUT;n:type:ShaderForge.SFN_Clamp01,id:8834,x:34272,y:32567,varname:node_8834,prsc:2|IN-5669-OUT;n:type:ShaderForge.SFN_Multiply,id:133,x:33299,y:33447,varname:node_133,prsc:2|A-7122-R,B-7441-OUT;n:type:ShaderForge.SFN_Vector1,id:2450,x:33310,y:33346,varname:node_2450,prsc:2,v1:3;n:type:ShaderForge.SFN_ValueProperty,id:7441,x:33100,y:33447,ptovrint:False,ptlb:node_7441,ptin:_node_7441,varname:node_7441,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:600;n:type:ShaderForge.SFN_Vector1,id:5834,x:33499,y:33283,varname:node_5834,prsc:2,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:1056,x:34263,y:34243,varname:node_1056,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9480-OUT;n:type:ShaderForge.SFN_Step,id:7658,x:33900,y:33447,varname:node_7658,prsc:2|A-6003-OUT,B-5834-OUT;n:type:ShaderForge.SFN_Floor,id:6003,x:33710,y:33447,varname:node_6003,prsc:2|IN-8382-OUT;n:type:ShaderForge.SFN_Vector1,id:9370,x:33299,y:33638,varname:node_9370,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8725,x:33299,y:33726,varname:node_8725,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:2103,x:33511,y:33625,varname:node_2103,prsc:2|A-133-OUT,B-9370-OUT;n:type:ShaderForge.SFN_Add,id:6460,x:33511,y:33771,varname:node_6460,prsc:2|A-133-OUT,B-8725-OUT;n:type:ShaderForge.SFN_Fmod,id:8382,x:33511,y:33447,varname:node_8382,prsc:2|A-133-OUT,B-2450-OUT;n:type:ShaderForge.SFN_Fmod,id:67,x:33900,y:33625,varname:node_67,prsc:2|A-9293-OUT,B-5834-OUT;n:type:ShaderForge.SFN_Fmod,id:5012,x:33900,y:33771,varname:node_5012,prsc:2|A-8151-OUT,B-5834-OUT;n:type:ShaderForge.SFN_Floor,id:9293,x:33710,y:33625,varname:node_9293,prsc:2|IN-2103-OUT;n:type:ShaderForge.SFN_Floor,id:8151,x:33710,y:33771,varname:node_8151,prsc:2|IN-6460-OUT;n:type:ShaderForge.SFN_Vector4Property,id:5738,x:34055,y:33266,ptovrint:False,ptlb:node_5738,ptin:_node_5738,varname:node_5738,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Panner,id:5310,x:34554,y:33365,varname:node_5310,prsc:2,spu:0,spv:1|UVIN-9480-OUT,DIST-7023-OUT;n:type:ShaderForge.SFN_Multiply,id:7023,x:34320,y:33365,varname:node_7023,prsc:2|A-5738-X,B-5738-W,C-7658-OUT;n:type:ShaderForge.SFN_Panner,id:8995,x:34554,y:33515,varname:node_8995,prsc:2,spu:0,spv:1|UVIN-9480-OUT,DIST-3721-OUT;n:type:ShaderForge.SFN_Panner,id:7187,x:34554,y:33697,varname:node_7187,prsc:2,spu:0,spv:1|UVIN-9480-OUT,DIST-9328-OUT;n:type:ShaderForge.SFN_Multiply,id:3721,x:34320,y:33515,varname:node_3721,prsc:2|A-5738-Y,B-5738-W,C-7658-OUT;n:type:ShaderForge.SFN_Multiply,id:9328,x:34320,y:33681,varname:node_9328,prsc:2|A-5738-Z,B-5738-W,C-7658-OUT;n:type:ShaderForge.SFN_Add,id:8649,x:35065,y:33018,varname:node_8649,prsc:2|B-7060-OUT,C-4180-OUT;n:type:ShaderForge.SFN_Add,id:2329,x:35056,y:33156,varname:node_2329,prsc:2|A-67-OUT,B-7060-OUT,C-4180-OUT;n:type:ShaderForge.SFN_Add,id:7790,x:35056,y:33291,varname:node_7790,prsc:2|A-5012-OUT,B-7060-OUT,C-4180-OUT;n:type:ShaderForge.SFN_Append,id:9404,x:35724,y:33191,varname:node_9404,prsc:2|A-8414-OUT,B-772-OUT,C-4964-OUT;n:type:ShaderForge.SFN_Clamp01,id:8909,x:35246,y:33018,varname:node_8909,prsc:2|IN-8649-OUT;n:type:ShaderForge.SFN_Clamp01,id:6723,x:35246,y:33156,varname:node_6723,prsc:2|IN-2329-OUT;n:type:ShaderForge.SFN_Clamp01,id:8041,x:35246,y:33291,varname:node_8041,prsc:2|IN-7790-OUT;n:type:ShaderForge.SFN_Multiply,id:8414,x:35462,y:33018,varname:node_8414,prsc:2|A-3457-R,B-8909-OUT;n:type:ShaderForge.SFN_Multiply,id:772,x:35462,y:33156,varname:node_772,prsc:2|A-5322-G,B-6723-OUT;n:type:ShaderForge.SFN_Multiply,id:4964,x:35462,y:33291,varname:node_4964,prsc:2|A-1236-B,B-8041-OUT;n:type:ShaderForge.SFN_Slider,id:7060,x:34299,y:33963,ptovrint:False,ptlb:node_7060,ptin:_node_7060,varname:node_7060,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5175959,max:1;n:type:ShaderForge.SFN_OneMinus,id:9934,x:34763,y:33938,varname:node_9934,prsc:2|IN-7060-OUT;n:type:ShaderForge.SFN_Multiply,id:4180,x:34952,y:33900,varname:node_4180,prsc:2|A-1625-OUT,B-9934-OUT;n:type:ShaderForge.SFN_Multiply,id:3347,x:35963,y:32977,varname:node_3347,prsc:2|A-8834-OUT,B-3457-RGB;n:type:ShaderForge.SFN_ValueProperty,id:8206,x:34263,y:34423,ptovrint:False,ptlb:node_8206,ptin:_node_8206,varname:node_8206,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1000;n:type:ShaderForge.SFN_Vector1,id:505,x:34264,y:34486,varname:node_505,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2770,x:34264,y:34550,varname:node_2770,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9935,x:34733,y:34385,varname:node_9935,prsc:2|IN-1056-OUT,IMIN-505-OUT,IMAX-2770-OUT,OMIN-505-OUT,OMAX-8206-OUT;n:type:ShaderForge.SFN_Sin,id:3773,x:34960,y:34385,varname:node_3773,prsc:2|IN-9935-OUT;n:type:ShaderForge.SFN_Abs,id:7967,x:35151,y:34385,varname:node_7967,prsc:2|IN-3773-OUT;n:type:ShaderForge.SFN_Step,id:5685,x:35376,y:34467,varname:node_5685,prsc:2|A-7967-OUT,B-8339-OUT;n:type:ShaderForge.SFN_Slider,id:8339,x:34780,y:34643,ptovrint:False,ptlb:node_8339,ptin:_node_8339,varname:node_8339,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2564108,max:1;n:type:ShaderForge.SFN_Time,id:2702,x:34428,y:35013,varname:node_2702,prsc:2;n:type:ShaderForge.SFN_Tau,id:8117,x:34461,y:34903,varname:node_8117,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:1528,x:34428,y:35166,ptovrint:False,ptlb:node_1528,ptin:_node_1528,varname:node_1528,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.5;n:type:ShaderForge.SFN_Multiply,id:8524,x:34638,y:35047,varname:node_8524,prsc:2|A-2702-T,B-1528-OUT;n:type:ShaderForge.SFN_Multiply,id:6586,x:34638,y:34903,varname:node_6586,prsc:2|A-1056-OUT,B-8117-OUT;n:type:ShaderForge.SFN_Vector1,id:9502,x:34814,y:35300,varname:node_9502,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:6889,x:35069,y:35046,varname:node_6889,prsc:2|A-6586-OUT,B-9502-OUT;n:type:ShaderForge.SFN_Multiply,id:136,x:35069,y:35180,varname:node_136,prsc:2|A-8524-OUT,B-9502-OUT;n:type:ShaderForge.SFN_Add,id:7817,x:35300,y:35105,varname:node_7817,prsc:2|A-6889-OUT,B-136-OUT;n:type:ShaderForge.SFN_Sin,id:3514,x:35532,y:35105,varname:node_3514,prsc:2|IN-7817-OUT;n:type:ShaderForge.SFN_OneMinus,id:4395,x:35794,y:35227,varname:node_4395,prsc:2|IN-3514-OUT;n:type:ShaderForge.SFN_Multiply,id:7372,x:35794,y:35070,varname:node_7372,prsc:2|A-3030-OUT,B-5822-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3030,x:35532,y:35006,ptovrint:False,ptlb:node_3030,ptin:_node_3030,varname:node_3030,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.001;n:type:ShaderForge.SFN_Vector1,id:5822,x:35532,y:35256,varname:node_5822,prsc:2,v1:30;n:type:ShaderForge.SFN_Step,id:6313,x:36020,y:35138,varname:node_6313,prsc:2|A-4395-OUT,B-7372-OUT;n:type:ShaderForge.SFN_Add,id:8917,x:36213,y:34985,varname:node_8917,prsc:2|B-6313-OUT;n:type:ShaderForge.SFN_Clamp01,id:2304,x:36422,y:34902,varname:node_2304,prsc:2|IN-8917-OUT;n:type:ShaderForge.SFN_Multiply,id:801,x:36719,y:34778,varname:node_801,prsc:2|B-2304-OUT;proporder:4354-558-6645-7441-5738;pass:END;sub:END;*/

Shader "Shader Forge/PostEffect" {
    Properties {
        _Color ("Color", Color) = (0.427451,0.6784314,0.5411765,1)
        _node_558 ("node_558", Range(0, 1)) = 1
        _MainTexture ("MainTexture", 2D) = "white" {}
        _node_7441 ("node_7441", Float ) = 600
        _node_5738 ("node_5738", Vector) = (0,0,0,0)
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
            uniform float _node_558;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float _node_7441;
            uniform float4 _node_5738;
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
                float2 node_3113 = (i.uv0-0.5);
                float node_2584 = (0.8*dot(node_3113,node_3113));
                float2 node_9480 = (((1.0+node_2584)*i.uv0*node_2584*_node_558)+i.uv0);
                float2 node_7122 = node_9480.rg;
                float node_2668 = 0.001;
                float node_7013 = 0.999;
                float node_133 = (node_7122.r*_node_7441);
                float node_5834 = 0.0;
                float node_7658 = step(floor(fmod(node_133,3.0)),node_5834);
                float2 node_5310 = (node_9480+(_node_5738.r*_node_5738.a*node_7658)*float2(0,1));
                float4 node_3457 = tex2D(_MainTexture,TRANSFORM_TEX(node_5310, _MainTexture)); // RED
                float3 finalColor = (saturate((1.0 - (step(node_7122.g,node_2668)+step(node_7122.r,node_2668)+step(node_7013,node_7122.g)+step(node_7013,node_7122.r))))*node_3457.rgb);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
