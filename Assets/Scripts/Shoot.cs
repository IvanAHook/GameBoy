using UnityEngine;

public class Shoot : MonoBehaviour {

	public Transform Particle;
	public Transform MuzzlePosition;

	void Update()
	{
		if (Input.GetKeyDown(KeyCode.Period))
		{
			var flash = (Transform)Instantiate(Particle, MuzzlePosition.position, Quaternion.identity);
			flash.parent = gameObject.transform;
		}

	}
}
