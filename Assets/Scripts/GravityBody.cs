using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class GravityBody : MonoBehaviour
{

	public PlanetGravity attractor;
	private Transform _transform;
	private Rigidbody _rigidbody;

	void Start ()
	{
		_transform = transform;
		_rigidbody = GetComponent<Rigidbody>();

		_rigidbody.constraints = RigidbodyConstraints.FreezeRotation;
		_rigidbody.useGravity = false;
	}
	
	void Update () {
		attractor.Attract(_transform);
	}
}
