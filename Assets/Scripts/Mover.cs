using UnityEngine;

[RequireComponent(typeof(NavMeshAgent))]
public class Mover : MonoBehaviour
{

	private NavMeshAgent _navMeshAgent;
	private Camera _camera;

	private bool _moving;

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
				_moving = true;
			}
		}
		if (_moving)
		{
			if (HasReachedDestination())
				Debug.Log ("YAAAAY");
		}

	}

	private bool HasReachedDestination() {
		// Check if we've reached the destination
		if (!_navMeshAgent.pathPending) {
			if (_navMeshAgent.remainingDistance <= _navMeshAgent.stoppingDistance) {
				if (!_navMeshAgent.hasPath || _navMeshAgent.velocity.sqrMagnitude == 0f) {
					_moving = false;
					return true;
				}
			}
		}
		return false;
	}

	void OnTriggerEnter(Collider other) 
	{
		if (other.transform.tag == "Player")
		{
			Debug.Log (string.Format("{0} Enter terminal collider", other.transform.name));
			// open terminal
		}
	}

	void OnTriggerExit(Collider other)
	{
		if (other.transform.tag == "Player")
		{
			Debug.Log (string.Format("{0} Exit terminal collider", other.transform.name));
			// set Terminal visuals to idle.
		}
	}

}
