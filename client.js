// THIS IS FOR 1.0.56+ ONLY

addEventHandler("OnResourceStart", (event,resource) => {
	let files = ["landstal", "idaho", "stinger", "linerun", "peren", "sentinel", "patriot", "firetruk", "trash", "stretch", 
	"manana", "infernus", "blista", "pony", "mule", "cheetah", "ambulan", "fbicar", "moonbeam", "esperant", "taxi", "kuruma", 
	"bobcat", "mrwhoop", "bfinject", "corpse", "police", "enforcer", "securicar", "banshee", "predator", "bus", "rhino", "barracks", 
	"train", "chopper", "dodo", "coach", "cabbie", "stallion", "rumpo", "rcbandit", "bellyup", "mrwongs", "mafia", "yardie" , 
	"diablo", "columb", "hoods", "deaddodo", "speeder", "reefer", "panlant", "flatbed", "yankee", "escape", "borgnine", "toyz", "ghost"];
		
	let modelIDs = [90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,
		120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,137,138,139,141,142,143,144,145,146,147,148,149,150];
	
	for(var i in files) {
		let txd = openFile(i+".txd", false);
		if(txd != null) {
			game.loadTXDFile(files[i].toUppercase, txd);
			txd.close()
		}	
		if(Number(modelIDs[i]) != -1) {
			let dff = openFile(i+".dff", false);
			if(dff != null) {
				game.loadDFFFile(Number(modelIDs[i]), dff);
				dff.close()
			}
		}
	}	
});
