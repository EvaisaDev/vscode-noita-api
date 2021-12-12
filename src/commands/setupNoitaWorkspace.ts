import * as fs from "fs";
import * as path from "path";
import * as vscode from "vscode";
import { CommandHandler } from "../types";

const createFileUri = (
  base: vscode.Uri,
  componentName: string,
  extension: string
): vscode.Uri => {
  return vscode.Uri.joinPath(
    base,
    componentName,
    `${componentName}.${extension}`
  );
};

export const setupNoitaWorkspace: CommandHandler = {
  command: "vscode-noita-api.setupNoitaWorkspace",
  callback: (uri: vscode.Uri): void => {

	let init_content = `
function OnModPreInit() 

end

function OnModInit() 

end

function OnModPostInit() 

end

function OnPlayerSpawned(player_entity) 

end

function OnWorldInitialized() 

end

function OnWorldPreUpdate() 

end

function OnWorldPostUpdate() 

end

function OnMagicNumbersAndWorldSeedInitialized() 

end
	`;

	let mod_xml_content = `
<Mod
	name="Mod Name"
	description="Mod Description"
	request_no_api_restrictions="0"	
	is_game_mode="0"
	is_translation="0"
	ui_newgame_name=""
	ui_newgame_description=""
	ui_newgame_gfx_banner_bg=""
	ui_newgame_gfx_banner_fg=""
	translation_xml_path=""
	translation_csv_path=""
>
</Mod>
	`

	let mod_workshop_xml_content = `
<Mod
	name="Mod Name"
	description=""
	tags=""
	dont_upload_folders=""
	dont_upload_files=""
> 
</Mod>	
	`

	function createWorkspace(folder: string){
		if (!fs.existsSync(path.join(folder, "files"))) {
			fs.mkdir(path.join(folder, "files"), (err) => {
				if(err){
					let message = "Noita API: Couldn't create \"files\" folder, do we have proper permissions?" ;
		
					vscode.window.showErrorMessage(message);
				}
			})
		}
		fs.writeFile(path.join(folder, 'init.lua'), init_content, function (err) {
			if (err) throw err;
			console.log('File is created successfully.');
		});
		fs.writeFile(path.join(folder, 'mod.xml'), mod_xml_content, function (err) {
			if (err) throw err;
			console.log('File is created successfully.');
		});
		fs.writeFile(path.join(folder, 'workshop.xml'), mod_workshop_xml_content, function (err) {
			if (err) throw err;
			console.log('File is created successfully.');
		});
	}

	if(vscode.workspace.workspaceFolders !== undefined) {
		let wf = vscode.workspace.workspaceFolders[0].uri.fsPath;

		fs.readdir(wf, function(err, files) {
			if (err) {
				let message = "Noita API: Couldn't read working folder." ;
	
				vscode.window.showErrorMessage(message);
			} else {
			   if (!files.length) {
					createWorkspace(wf)
			   }else{
					vscode.window
					.showInformationMessage(
					"The first workspace is not empty, Are you sure you want to do this?\n[Note that doing this could overwrite existing files]",
					...["Yes", "No"]
					)
					.then((answer) => {
						if (answer === "Yes") {
							createWorkspace(wf)
						}
					});
			   }
			}
		});


	} 
	else {
		let message = "Noita API: Working folder not found, open a folder an try again" ;
	
		vscode.window.showErrorMessage(message);
	}
  },
};