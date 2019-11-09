package com.cappuccino.pojo;

import java.util.Date;

public class Dialoguo {
	private int dialogueId, dialogueSender, DialogueAccept;
	private String dialogueContent;
	private Date DialogueSenderTime, DialogueAcceptTime;

	public int getDialogueId() {
		return dialogueId;
	}

	public void setDialogueId(int dialogueId) {
		this.dialogueId = dialogueId;
	}

	public int getDialogueSender() {
		return dialogueSender;
	}

	@Override
	public String toString() {
		return "Dialoguo [dialogueId=" + dialogueId + ", dialogueSender=" + dialogueSender + ", DialogueAccept="
				+ DialogueAccept + ", dialogueContent=" + dialogueContent + ", DialogueSenderTime=" + DialogueSenderTime
				+ ", DialogueAcceptTime=" + DialogueAcceptTime + "]";
	}

	public void setDialogueSender(int dialogueSender) {
		this.dialogueSender = dialogueSender;
	}

	public int getDialogueAccept() {
		return DialogueAccept;
	}

	public void setDialogueAccept(int dialogueAccept) {
		DialogueAccept = dialogueAccept;
	}

	public String getDialogueContent() {
		return dialogueContent;
	}

	public void setDialogueContent(String dialogueContent) {
		this.dialogueContent = dialogueContent;
	}

	public Date getDialogueSenderTime() {
		return DialogueSenderTime;
	}

	public void setDialogueSenderTime(Date dialogueSenderTime) {
		DialogueSenderTime = dialogueSenderTime;
	}

	public Date getDialogueAcceptTime() {
		return DialogueAcceptTime;
	}

	public void setDialogueAcceptTime(Date dialogueAcceptTime) {
		DialogueAcceptTime = dialogueAcceptTime;
	}
}
