using UnityEngine;
using System;

public class Terminal : InteractableObjectBase
{
    public ConnectedObjectData[] ConnectedObjects;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Alpha0))
        {
            TerminalManager.Instance.Open(ConnectedObjects);
        }
        if (Input.GetKeyDown(KeyCode.Alpha9))
        {
            Mover.reachedDestination += TerminalOpen;
        }
    }

    private void TerminalOpen()
    {
        TerminalManager.Instance.Open(ConnectedObjects);
        Mover.reachedDestination -= TerminalOpen;
    }

	public override void Interract()
	{
		TerminalOpen();
	}
}

[Serializable]
public struct ConnectedObjectData
{
    public string Name;
    public ConnectedObjectBase Prefab;
}
