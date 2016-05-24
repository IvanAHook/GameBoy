using UnityEngine;
using System.Collections;

public class EarthSpin : MonoBehaviour
{
	public float RotSpeed = 1;
	
	void Update () {
		transform.Rotate(new Vector3(0,1,0)*RotSpeed, Space.Self);
	}
}
