enum kolosse {
    none,
    peadot, peadot2, peadot3,
    grizling, grizlisk, grizlord,
    tridon, tridon2, tridon3,
    //blueBird, blueBird2,
    //chipSquirl,
    doodleBug, doodleBug2, doodleBug3,
    monky, monky2,
    elecWeel, elecWeel2,
    
    total //this set to be last so to count the total. Nice becuse the first enum starts at zero
}

enum kolosseStat {
    speciesName,
    typeOne, typeTwo,
    healthBase, energyBase, attackBase, defenceBase, speedBase,
    weight, //airSpeed, fallSpeed, runSpeed, dashSpeed
    expSpeed,
    whenEvolve, //make this as none, a number, or a script
    animationList, //this is all of the sprites and animations in and outside of battle
    moveList, //move name and the level it is learnd in a grid
    battleStateScript, //this stores the state mechanice of the kolosse
    
    total //this set to be last so to count the total. Nice becuse the first enum starts at zero
} 

//Create a ds grid kolosse stats wide, and number of kolosse tall
global.kolosseIndex = ds_grid_create(kolosseStat.total, kolosse.total);
//Set every position to 0
ds_grid_clear(global.kolosseIndex, 0); 
