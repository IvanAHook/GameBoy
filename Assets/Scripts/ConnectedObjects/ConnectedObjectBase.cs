using UnityEngine;
using System.Collections;

public abstract class ConnectedObjectBase : MonoBehaviour
{
	public ObjectType ObjectType;

	public abstract void Help();

	public abstract string Input(string[] args);
}

