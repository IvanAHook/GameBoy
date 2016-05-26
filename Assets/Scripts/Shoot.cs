using UnityEngine;
using System.Collections;

public class Shoot : MonoBehaviour {

	public ParticleSystem Particle;

	void Start()
	{

	}

	void Update()
	{
		if (Input.GetMouseButtonDown(0))
		{
			var position = transform.position + Vector3.forward*-6;
			position = new Vector3(position.x, position.y+1, position.z);
			Instantiate(Particle, position, Quaternion.identity);
		}

	}
}
