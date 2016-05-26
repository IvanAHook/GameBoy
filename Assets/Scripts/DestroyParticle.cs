using UnityEngine;
using System.Collections;

public class DestroyParticle : MonoBehaviour
{

	private ParticleSystem _particle;

	void Awake()
	{
		_particle = GetComponent<ParticleSystem>();
	}

	void Update () {
		if (!_particle.IsAlive())
		{
			Destroy(gameObject);
		}
	}
}
