using UnityEngine;

public class PlanetGravity : MonoBehaviour
{

	private float _gravity = -10;

	public void Attract(Transform body)
	{
		var gravityUp = (body.position - transform.position).normalized;
		var bodyUp = body.up;

		body.GetComponent<Rigidbody>().AddForce(gravityUp*_gravity);

		Quaternion targetRotation = Quaternion.FromToRotation(bodyUp, gravityUp) * body.rotation;
		body.rotation = Quaternion.Slerp(body.rotation, targetRotation, 50*Time.deltaTime);
	}
}
