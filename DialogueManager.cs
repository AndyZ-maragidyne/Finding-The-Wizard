using System;
using Godot;
using GodotInk;

public partial class DialogueManager : Node
{
	[Export]
	public Godot.Label dialogue;

	[Export]
	public VBoxContainer dialogueChoices;

	[Export]
	public InkStory newStory;

	private InkStory story;

	public Boolean inStory = false;
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		story = newStory;
		//ContinueStory();
	}

	public override void _Process(double delta)
	{
		// if (dialogue != null && dialogueChoices != null) {
		// 	dialogue.Visible = false;
		// 	dialogueChoices.Visible = false;
		// }
		//GD.Print("Can continue: " + inStory);
	}

	public void ContinueStory()
	{
		inStory = true;
		foreach (Node child in dialogueChoices.GetChildren())
			child.QueueFree();

		dialogue.Text = newStory.ContinueMaximally();

		foreach (InkChoice choice in story.CurrentChoices)
		{
			Button button = new() { Text = choice.Text };
			Godot.TextServer.AutowrapMode autowrap = (Godot.TextServer.AutowrapMode) 3;
			button.SetAutowrapMode(autowrap);
			button.Pressed += delegate
			{
				newStory.ChooseChoiceIndex(choice.Index);
				ContinueStory();
			};
			dialogueChoices.AddChild(button);
		}

		if (!newStory.CanContinue && story.CurrentChoices.Count == 0)
		{
			inStory = false;
			updateUI();
		}
		else
		{
			updateUI();
		}
	}

	public void restartStory(){	
		newStory.ResetState();
		ContinueStory();
	}	

	public void updateUI() {
		dialogue.Visible = inStory;
		dialogueChoices.Visible = inStory;	
	}
}
