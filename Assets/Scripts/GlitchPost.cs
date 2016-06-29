using UnityEngine;
using System.Collections;

public class GlitchPost : MonoBehaviour
{
	private Shader _glitch;
	private Camera _camera;

	public Material Glitch;

	private void Awake () {
		//_glitch = Shader.Find("GlitchPostShader");
		//_camera = Camera.main;
		//_camera.RenderWithShader(_glitch, "RenderType");
		//_camera.SetReplacementShader(_glitch, "RenderType");
	}

	//private void OnPostRender()
	//{
	//	Debug.Log("OnPostRender");
	//	//RT = RenderTexture.GetTemporary(Screen.width / 4, Screen.height / 4);
	//	//gameObject.camera.targetTexture = RT;
	//	_camera.RenderWithShader(_glitch, "");

	//}

	private void OnRenderImage(RenderTexture source, RenderTexture destination)
	{
		Graphics.Blit(source, destination, Glitch);
	}

}
