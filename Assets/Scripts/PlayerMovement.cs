using System.Security.Permissions;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class PlayerMovement : MonoBehaviour
{

	private Rigidbody _rigidbody;
	private Vector3 _moveDirection;

	public float MoveSpeed = 25;

	void Start()
	{
		_rigidbody = GetComponent<Rigidbody>();
	}

	void Update () {
		_moveDirection = new Vector3(Input.GetAxisRaw("Horizontal"), 0, Input.GetAxisRaw("Vertical")).normalized;
	}

	void FixedUpdate()
	{
		_rigidbody.MovePosition(_rigidbody.position + transform.TransformDirection(-_moveDirection)*MoveSpeed*Time.deltaTime);
	}
}
