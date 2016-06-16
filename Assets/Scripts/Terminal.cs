using System;
using UnityEngine;
using UnityEngine.Events;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using UnityEngine.UI;

public class Terminal : MonoBehaviour
{

	[Serializable]
	public struct Command
	{
		public string name;
		public UnityEvent action;
	}

	public Text TerminalText;
	public InputField TerminalInputField;

	private static readonly char[] DelimiterChars = { ' ' };
	private Dictionary<string, Action<string[]>> _commands;

	public Command[] Commands;

	private void Start ()
	{
		// populate _commands
		_commands = new Dictionary<string, Action<string[]>>();
		_commands.Add("PUSS", strings =>
		{
			foreach (var s in strings)
			{
				PrintToTerminal("..." + s);
			}
		});
		_commands.Add ("HELP", strings =>
		{

			PrintToTerminal("");
			PrintToTerminal("LOCAL OPERATIONS:");
			for(int i = 0; i < _commands.Count; i++)
			{
				PrintToTerminalTabbed(_commands.Keys.ElementAt(i));
			}

			PrintToTerminal("");
			PrintToTerminal("EXTERNAL OPERATIONS:");
			for(int i = 0; i < Commands.Length; i++)
			{
				PrintToTerminalTabbed(Commands[i].name);
			}
		});

		TerminalInputField.caretWidth = 10;
		TerminalInputField.caretBlinkRate = 1;
	}

	public void ParseCommand(string input)
	{
		var commands = input.Split(DelimiterChars).ToList();
		var command = commands[0];
		commands.Remove(command);
		var args = commands.ToArray();

		//input = Regex.Replace(input, @"\s+", "");

		Action<string[]> action;
		if(_commands.TryGetValue(command, out action))
		{
			PrintToTerminal(string.Format("> {0}", input));
			action.Invoke(args);
			ResetTerminalInputField();
			return;
		}
		else
		{
			for(int i = 0; i < Commands.Length; i++)
			{
				if(Commands[i].name == command)
				{
					PrintToTerminal(string.Format("> {0}", input));
					PrintToTerminal(string.Format("EXECUTING {0}", command));
					Commands[i].action.Invoke();
					ResetTerminalInputField();
					return;
				}
			}
		}

		PrintToTerminal(string.Format("COMMAND {0} NOT RECOGNIZED...", command));
		ResetTerminalInputField();
		TerminalText.text = TerminalText.text.ToUpper();
	}

	private void PrintToTerminal(string input)
	{
		TerminalText.text += Environment.NewLine + string.Format(input);
	}

	private void PrintToTerminalTabbed(string input)
	{
		TerminalText.text += Environment.NewLine + "    " + string.Format(input);
	}

	private void ResetTerminalInputField()
	{
		TerminalInputField.Select();
		TerminalInputField.ActivateInputField();
		TerminalInputField.text = "";
	}

	public void OnValueChanged()
	{
		TerminalInputField.text.ToUpper(); /*= string.Format("> {0}", TerminalInputField.text.ToUpper());*/
	}

}
