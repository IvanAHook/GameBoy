using System;
using UnityEngine;
using System.Collections.Generic;
using System.Linq;
using UnityEngine.UI;
using System.Collections;

public class TerminalManager : MonoBehaviour
{

    //[Serializable]
    //public struct Command
    //{
    //	public string name;
    //	public UnityEvent action;
    //}
    //public Command[] Commands;

    public static TerminalManager Instance;

    public Text TerminalText;
	public InputField TerminalInputField;
	public Transform TerminalTransform;
	public Canvas TerminalCanvas;

	public AudioSource _audioSource;
	public AudioClip KeyboardClick;

	private static readonly char[] DelimiterChars = { ' ' };
	private Dictionary<string, Action<string[]>> _commands;

    private Dictionary<string, ConnectedObjectBase> _connectedObjects;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
    }

    private void Start ()
	{
		_audioSource = GetComponent<AudioSource>();
        _connectedObjects = new Dictionary<string, ConnectedObjectBase>();
        _commands = new Dictionary<string, Action<string[]>>()
        {
            {
                "HELP",
                strings =>
                {
                    PrintToTerminal("");
                    PrintToTerminal("LOCAL OPERATIONS:");
                    for(int i = 0; i < _commands.Count; i++)
                    {
                        PrintToTerminalTabbed(_commands.Keys.ElementAt(i));
                    }
		        }
            },
			{
				"PING",
				strings =>
				{
					PrintToTerminal("");
					PrintToTerminal("EXTERNAL OPERATIONS:");
					for (int i = 0; i < _connectedObjects.Count; i++)
					{
						PrintToTerminalTabbed(_connectedObjects.Values.ElementAt(i).ObjectType.ToString() + " - " + _connectedObjects.Keys.ElementAt(i));
					}
				}
			},
			{
                "CLEAR",
                strings =>
                {
                    TerminalText.text = "";
                }
            },
            {
                "CLOSE",
                strings =>
                {
					TerminalCanvas.gameObject.SetActive(false);
					gameObject.SetActive(false);
                }
            }

        };

		TerminalInputField.caretWidth = 10;
		TerminalInputField.caretBlinkRate = 1;
	}
    
    public void Open(ConnectedObjectData[] connectedObjects)
    {
        for (int i = 0; i < connectedObjects.Length; i++)
        {
			if (_connectedObjects.ContainsKey(connectedObjects[i].Name)) continue;

            _connectedObjects.Add(connectedObjects[i].Name, connectedObjects[i].Prefab);
		}
		TerminalCanvas.gameObject.SetActive(true);
        gameObject.SetActive(true);
        ResetTerminalInputField();
	}

	private void Update()
	{
		if (Input.GetKeyDown(KeyCode.Return))
		{
			ParseCommand(TerminalInputField.text);
		}
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
			PrintToTerminal(string.Format("{0}", input));
			action.Invoke(args);
			ResetTerminalInputField();
			return;
		}
		else
		{
			if (_connectedObjects.ContainsKey(command))
			{
				PrintToTerminal(_connectedObjects[command].Input(args));

				ResetTerminalInputField();
				TerminalText.text = TerminalText.text.ToUpper();
				return;

				//if (_connectedObjects[command].ObjectType == ObjectType.Door)
				//{
				//	var door = _connectedObjects[command] as ConnectedDoor;
				//	if (door != null) PrintToTerminal(door.Input(args));

				//	ResetTerminalInputField();
				//	TerminalText.text = TerminalText.text.ToUpper();
				//	return;
				//}
			}
		}

		PrintToTerminal(string.Format("COMMAND {0} NOT RECOGNIZED...", command));
		ResetTerminalInputField();
		TerminalText.text = TerminalText.text.ToUpper();
	}

    private IEnumerator Print(char[] input)
    {
        TerminalText.text += Environment.NewLine;
        for (int i = 0; i < input.Length; i++)
        {
            _audioSource.PlayOneShot(KeyboardClick, 0.5f);
            TerminalText.text += input[i];
            yield return new WaitForEndOfFrame();
        }
    }

	private void PrintToTerminal(string input)
	{
        TerminalText.text += Environment.NewLine + string.Format(input);
        //StartCoroutine(Print(input.ToArray()));
	}

	private void PrintToTerminalTabbed(string input)
	{
        TerminalText.text += Environment.NewLine + "    " + string.Format(input);
        //StartCoroutine(Print(("    " + input).ToArray()));
    }

	private void ResetTerminalInputField()
	{
		TerminalInputField.Select();
		TerminalInputField.ActivateInputField();
		TerminalInputField.text = "";
	}

	public void OnValueChanged()
	{
		//_audioSource.PlayOneShot(KeyboardClick, 1f);
		var text = TerminalInputField.text;
		if (text != TerminalInputField.text.ToUpper()) {
			TerminalInputField.text = TerminalInputField.text.ToUpper();
		}
		//TerminalInputField.text.ToUpper(); /*= string.Format("> {0}", TerminalInputField.text.ToUpper());*/
	}

}
