using UnityEngine;

[RequireComponent(typeof(NavMeshAgent))]
public class Mover : MonoBehaviour
{

	private NavMeshAgent _navMeshAgent;
	private Camera _camera;

	void Start ()
	{
		_camera = Camera.main;
		_navMeshAgent = GetComponent<NavMeshAgent>();
	}
	
	void Update () {
		if (Input.GetMouseButtonDown(0))
		{
			RaycastHit hit;
			Ray ray = _camera.ScreenPointToRay(Input.mousePosition);

			if (Physics.Raycast(ray, out hit))
			{
				Transform objectHit = hit.transform;

				_navMeshAgent.destination = hit.point;
			}
		}
	}
}
