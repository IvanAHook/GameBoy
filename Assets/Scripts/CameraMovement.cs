using UnityEngine;
using System.Collections;

public class CameraMovement : MonoBehaviour {

	private Camera _cam;

	void Awake ()
	{
		_cam = Camera.main;
	}
	
	void Update () {

		if (Input.GetMouseButton(0))
		{
			
		}
	}
}
