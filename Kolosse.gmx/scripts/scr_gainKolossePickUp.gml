///scr_gainKolossePickUp(kolosse ID, level)
var iid = argument0;
var nickName = global.kolosseIndex[# kolosseStat.speciesName, iid];

var slot = 0; //A temporary variable to loop through the slots
var party_height = ds_grid_height(global.playerParty);

while (slot <= party_height) {
 //If the tested slot in the party is empty
if (global.playerParty[# 0, slot] == kolosse.none)
 {
    global.playerParty[# 0, slot] = iid; //ID Number
    global.playerParty[# 1, slot] = nickName; //Nickname slot
    global.playerParty[# 2, slot] = argument1; //Current Level
    global.playerParty[# 3, slot] = 0; //Current EXP //base it off of level and level up speed ds grid
    global.playerParty[# 4, slot] = 0; //Damage
    global.playerParty[# 5, slot] = 0; //Energy Used
    
    global.playerParty[# 6, slot] = irandom_range(floor(argument1/25), round(argument1/2)+25); // Hidden Value HP
    global.playerParty[# 7, slot] = irandom_range(floor(argument1/25), round(argument1/2)+25); // Hidden Value EP
    global.playerParty[# 8, slot] = irandom_range(floor(argument1/25), round(argument1/2)+25); // Hidden Value Attack
    global.playerParty[# 9, slot] = irandom_range(floor(argument1/25), round(argument1/2)+25); // Hidden Value Defence
    global.playerParty[# 10, slot] = irandom_range(floor(argument1/25), round(argument1/2)+25); // Hidden Value Speed
    global.playerParty[# 11, slot] = irandom_range(floor(argument1/25), round(argument1/2)+25); // Hidden Value Weight
    
    //Reffrence the first move in each catigory
    global.playerParty[# 12, slot] = 0; //Attack stand
    global.playerParty[# 13, slot] = 0; //Attack side
    global.playerParty[# 14, slot] = 0; //Attack down
    global.playerParty[# 15, slot] = 0; //Attack up
    global.playerParty[# 16, slot] = 0; //Attack shot
    
    //note that the disadvantaged version of these attacks are set for each kolosse
    
    global.playerParty[# 17, slot] = "OKAY"; // Status Effect or Fainted or Dead or Okay
    global.playerParty[# 18, slot] = irandom_range(0, 1); // Gender
    global.playerParty[# 19, slot] = 50; // Trust %
    global.playerParty[# 20, slot] = room; // Met at what location


    return true; //Did set the slot
  exit; //Exit function, because it has set the slot
  }
 slot ++; //Incriment slot to test next position
 }
 return false; //Did not set slot
