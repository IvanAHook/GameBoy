using System;
using UnityEngine;
using System.Collections;
using DG.Tweening;

public class ConnectedLight : ConnectedObjectBase
{

	public Light Light;

	private bool _isOpen = false;

	private void Awake()
	{
		base.ObjectType = ObjectType.Light;
	}

	public override void Help()
	{
		throw new NotImplementedException();
	}

	public override string Input(string[] args)
	{
		if (args[0] == "ON")
		{
			Light.DOIntensity(5.3f, 1);

			return "LIGHT ON";
		}
		if (args[0] == "OFF")
		{
			Light.DOIntensity(0.3f, 1);

			return "LIGHT OFF";
		}
		if (args[0] == "HELP")
		{
			return "COMMANDS: ON, OFF";
		}
		return String.Format("ARGUMENT {0} NOT RECOGNIZED", args[0]);
	}
}
