using System;
using UnityEngine;
using DG.Tweening;

public class Door : ConnectedObjectBase
{

    public Transform LeftDoor;
	public Transform RightDoor;

	private bool _isOpen = false;

    private void Awake()
    {
        base.ObjectType = ObjectType.Door;
    }

	public string Open(string[] args)
	{
		if (args[0] == "OPEN")
		{
			LeftDoor.DOLocalMoveX(-1.5f, 1f);
			RightDoor.DOLocalMoveX(1.5f, 1f);
			return "OPENING DOOR";
		}
		if(args[0] == "CLOSE")
		{
			LeftDoor.DOLocalMoveX(-0.5f, 1f);
			RightDoor.DOLocalMoveX(0.5f, 1f);
			return "CLOSING DOOR";
		}
		if (args[0] == "HELP")
		{
			return "COMMANDS: OPEN, CLOSE";
		}
		return String.Format("ARGUMENT {0} NOT RECOGNIZED", args[0]);
	}

	public override void Help()
	{
		throw new NotImplementedException();
	}

	public override void Input()
	{
		throw new NotImplementedException();
	}
}
