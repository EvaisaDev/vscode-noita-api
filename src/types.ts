import * as vscode from "vscode";

export interface CommandHandler {
  command: string;
  callback(uri: vscode.Uri): void;
}