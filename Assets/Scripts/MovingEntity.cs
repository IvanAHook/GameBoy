using UnityEngine;
using System.Collections;
using DG.Tweening;

public class MovingEntity : MonoBehaviour
{

	void Start ()
	{
		var sequence = DOTween.Sequence();
		sequence.Append(transform.DOLocalMoveY(0.6f, 0.25f));
		sequence.Append(transform.DOLocalMoveY(0.5f, 0.25f));
		sequence.SetLoops(-1);
	}

}
