Shader "Custom/CelShader"
{
	Properties
	{
		_Color("Color", Color) = (1, 1, 1, 1)
		_MainTex("Albedo (RGB)", 2D) = "white" {}

		_Ramp("Ramp", Range(1,2)) = 1
	}

	SubShader
	{
		Tags
		{
			"RenderType" = "Opaque"
		}
		LOD 200

		CGPROGRAM
		//#pragma surface surf fullforwardshadows
		
		#pragma surface surf CelShadingForward fullforwardshadows
		#pragma target 3.0

		float _Ramp;

		half4 LightingCelShadingForward(SurfaceOutput s, half3 lightDir, half atten) {
			half NdotL = dot(s.Normal, lightDir);


			if (_Ramp == 1)
			{
				NdotL = smoothstep(0, 0.025f, NdotL);
			}
			else if (_Ramp == 2)
			{
				if (NdotL <= 0.25) NdotL = 0;
				else if (NdotL <= 0.75) NdotL = 0.5;
			}

			//if (NdotL <= 0) NdotL = 0;
			//else NdotL = 1;
			half4 c;
			c.rgb = s.Albedo * _LightColor0.rgb * clamp((NdotL * atten * 2), 0, 1);
			//c.rgb = s.Albedo * _LightColor0.rgb * (NdotL);
			c.a = s.Alpha;
			return c;
		}


		sampler2D _MainTex;
		fixed4 _Color;

		struct Input {
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutput o) {
			// Albedo comes from a texture tinted by color
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
