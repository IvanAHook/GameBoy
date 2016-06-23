using UnityEngine;
using System.Collections;
using DG.Tweening;

public class Door : ConnectedObject
{

    public Transform LeftDoor;
	public Transform RightDoor;

	private bool _isOpen = false;

    private void Awake()
    {
        base.ObjectType = ObjectType.Door;
    }

	public void Open(string args)
	{
		if(args == "OPEN")
		{
			LeftDoor.DOLocalMoveX(-1.5f, 1f);
			RightDoor.DOLocalMoveX(1.5f, 1f);
		} else if(args == "CLOSE")
		{
			LeftDoor.DOLocalMoveX(-0.5f, 1f);
			RightDoor.DOLocalMoveX(0.5f, 1f);
		}

	}

}
