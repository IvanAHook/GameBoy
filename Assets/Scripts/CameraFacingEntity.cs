using UnityEngine;
using System.Collections;
using DG.Tweening;

public class CameraFacingEntity : MonoBehaviour
{
	private Camera _cam;

	void Start () {
		_cam = Camera.main;
	}

	void Update()
	{
		Vector3 fwd = _cam.transform.forward;
		transform.rotation = Quaternion.LookRotation(fwd);
	}
}
