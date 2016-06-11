using System;
using UnityEngine;
using System.Collections.Generic;
using System.Linq;

public class Terminal : MonoBehaviour
{

	private static readonly char[] DelimiterChars = { ' ' };
	//private string[] _commands;
	private Dictionary<string, Action<string[]>> _commands;

	void Start () {
		// populate _commands
	}

	public string ParseCommand(string input)
	{
		var commands = input.Split(DelimiterChars).ToList();
		var command = commands[0];
		commands.Remove(command);
		var args = commands.ToArray();

		Action<string[]> action;
		if (_commands.TryGetValue(command, out action))
		{
			action.Invoke(args);
			return string.Format("executing {0}", command);
		}
		return string.Format("command {0} does not exist", command);
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
