using System;
using UnityEngine;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using UnityEngine.UI;

public class Terminal : MonoBehaviour
{
	public Text TerminalText;

	private static readonly char[] DelimiterChars = { ' ' };
	private Dictionary<string, Action<string[]>> _commands;

	void Start () {
		// populate _commands
		_commands = new Dictionary<string, Action<string[]>>();
		_commands.Add("puss", strings =>
		{
			foreach (var s in strings)
			{
				Debug.Log("... " + s);
			}
		});
	}

	public void ParseCommand(string input)
	{
		var commands = input.Split(DelimiterChars).ToList();
		var command = commands[0];
		commands.Remove(command);
		var args = commands.ToArray();

		input = Regex.Replace(input, @"\s+", "");

		Debug.Log(input);

		Action<string[]> action;
		if (_commands.TryGetValue(command, out action))
		{
			action.Invoke(args);
			TerminalText.text += Environment.NewLine + string.Format("su@root: {0}", input);
			TerminalText.text += Environment.NewLine + string.Format("executing {0}", command);
			return;
			//return string.Format("executing {0}", command);
		}
		TerminalText.text = string.Format("command {0} does not exist", command);
		//return string.Format("command {0} does not exist", command);
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
