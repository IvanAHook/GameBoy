using UnityEngine;

[RequireComponent(typeof(NavMeshAgent))]
public class Mover : MonoBehaviour
{

    public delegate void ReachedDestination();
    public static ReachedDestination reachedDestination;

    private NavMeshAgent _navMeshAgent;
	private Camera _camera;

	private bool _moving;

    private void Start ()
	{
		_camera = Camera.main;
		_navMeshAgent = GetComponent<NavMeshAgent>();
	}

    private void Update () {
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
		    if (HasReachedDestination() && reachedDestination != null)
		    {
                reachedDestination();
		    }

		}

	}

	private bool HasReachedDestination() {
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

}
