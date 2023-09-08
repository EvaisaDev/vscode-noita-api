import * as vscode from "vscode";
import { CommandHandler } from "./types";
import { setupNoitaWorkspace } from "./commands/setupNoitaWorkspace";
import * as fs from 'fs';
import * as path from 'path';

const log = vscode.window.createOutputChannel("Noita API");

/*
async function checkDofileAndActivateDefinitions(document: vscode.TextDocument): Promise<void> {
  const extensionId = "evaisa.vscode-noita-api";
  const extensionPath = vscode.extensions.getExtension(extensionId)?.extensionPath;

  if (!extensionPath) {
    console.error("Extension not found:", extensionId);
    return;
  }

  const definitionFilesFolder = path.join(extensionPath, "out\\definitionFiles");

  const text = document.getText();
  const dofileRegex = /dofile\(["'](.+?)["']\)/g;
  let match;

  // Keep track of encountered dofile paths
  const encounteredDofilePaths = new Set<string>();

  while ((match = dofileRegex.exec(text)) !== null) {
    const filePath = match[1];
    const definitionFilePath = path.join(definitionFilesFolder, filePath);

    log.appendLine(`Checking for ${definitionFilePath}`);

    const fileExists = await new Promise<boolean>((resolve) => {
      fs.access(definitionFilePath, fs.constants.F_OK, (err) => {
        resolve(!err);
      });
    });

    if (fileExists) {
      setExternalLibrary(path.join("out\\definitionFiles", filePath), true);
      encounteredDofilePaths.add(definitionFilePath); // Store the encountered path
    }
  }

  // Filter the workspace.library
  const config = vscode.workspace.getConfiguration("Lua");
  const library: string[] | undefined = config.get("workspace.library");

  if (library) {
    const filteredLibrary = library.filter(libraryPath => {
      return encounteredDofilePaths.has(libraryPath) || libraryPath.startsWith("out\\NoitaLua") || (!libraryPath.startsWith(definitionFilesFolder) && !libraryPath.startsWith("out\\NoitaLua"));
    });

    if (filteredLibrary.length !== library.length) {
      config.update("workspace.library", filteredLibrary, true);
    }
  }
}
*/

export function activate(context: vscode.ExtensionContext) {
    const commands: CommandHandler[] = [setupNoitaWorkspace];
  
    for (let { command, callback } of commands) {
      console.log(`:: registering ${command}`);
      const disposable: vscode.Disposable = vscode.commands.registerCommand(command, callback);
      context.subscriptions.push(disposable);
    }
  
    // Register a text document content change listener
    /*
    context.subscriptions.push(
      vscode.workspace.onDidChangeTextDocument(async (event) => {
        const languageId = event.document.languageId;
        if (languageId === "lua") {
          await checkDofileAndActivateDefinitions(event.document);
        }
      })
    );
  
    // Check for dofiles in the active text editor upon extension activation
    if (vscode.window.activeTextEditor) {
      const languageId = vscode.window.activeTextEditor.document.languageId;
      if (languageId === "lua") {
        checkDofileAndActivateDefinitions(vscode.window.activeTextEditor.document).catch((err) =>
          console.error(err)
        );
      }
    }*/
  
    // Original setExternalLibrary call, setting the NoitaLua library by default
    setExternalLibrary("out\\NoitaLua", true);
  }

  export function deactivate() {
    const extensionId = "evaisa.vscode-noita-api";
    const extensionPath = vscode.extensions.getExtension(extensionId)?.extensionPath as string;
    //const definitionFilesFolder = path.join(extensionPath, "out\\definitionFiles");

    // Filter the workspace.library
    /*
    const config = vscode.workspace.getConfiguration("Lua");
    const library: string[] | undefined = config.get("workspace.library");

    if (library) {
      const filteredLibrary = library.filter(libraryPath => {
        return !libraryPath.startsWith(definitionFilesFolder);
      });
      
      if (filteredLibrary.length !== library.length) {
        config.update("workspace.library", filteredLibrary, true);
      }
    }*/

    // Reset the workspace.library setting
    setExternalLibrary("out\\NoitaLua", false); 
  }

  export function setExternalLibrary(folder: string, enable: boolean) {
    console.log("setExternalLibrary", folder, enable);
    const extensionId = "evaisa.vscode-noita-api";
    const extensionPath = vscode.extensions.getExtension(extensionId)?.extensionPath;

    if (!extensionPath) {
        console.error("Extension not found:", extensionId);
        return;
    }

    const folderPath = extensionPath + "\\" + folder;
    const config = vscode.workspace.getConfiguration("Lua");
    const library: string[] | undefined = config.get("workspace.library");

    if (library) {
        for (let i = library.length - 1; i >= 0; i--) {
            const el = library[i];
            // Check if path contains extensionid
            if (el.includes(extensionId)) {
              library.splice(i, 1);
            }
        }
        if (enable) {
          log.appendLine(`Adding ${folderPath} to library`);
          library.push(folderPath);
        }

        config.update("workspace.library", library, true);
    }
}