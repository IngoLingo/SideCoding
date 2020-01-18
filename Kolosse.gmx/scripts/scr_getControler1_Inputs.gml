//React to controler inputs
//Put "scr_getControlerInputs();" near the top of every step event that reacts to a button press
//Reference: Objects > Extentions > inputdog > InputForPlayer1

    //Directions
key_press_up        = inputdog_pressed("up",playerSlot);    //Tap to (TopDown: Face North,          Side: Tap Twice to Jump)
key_press_down      = inputdog_pressed("down",playerSlot);  //Tap to (TopDown: Face South,          Side: Tap Twice to Fall Faster)
key_press_left      = inputdog_pressed("left",playerSlot);  //Tap to (TopDown: Face West,           Side: Tap Twice to Dash Left
key_press_right     = inputdog_pressed("right",playerSlot); //Tap to (TopDown: Face East,           Side: Tap Twice to Dash Right)
    
key_hold_up         = inputdog_analog("up",playerSlot);     //Hold down to (TopDown: Move North,    Side: Ready Up Attack)
key_hold_down       = inputdog_analog("down",playerSlot);   //Hold down to (TopDown: Move South,    Side: Ready Down Attack)
key_hold_left       = inputdog_analog("left",playerSlot);   //Hold down to (TopDown: Move West,     Side: Move Left and Ready Side Attack Left)
key_hold_right      = inputdog_analog("right",playerSlot);  //Hold down to (TopDown: Move East,     Side: Move Right and Ready Side Attack Right)

    //Actions
key_press_A         = inputdog_pressed("A",playerSlot);     //Tap to (TopDown: Progress Talking,    Side: Attack)
key_press_B         = inputdog_pressed("B",playerSlot);     //Tap to (TopDown: Interact with something and Progress Talking,    Side: Short Jump)
key_press_X         = inputdog_pressed("X",playerSlot);     //Tap to (TopDown: Interact with something and Progress Talking,    Side: Short Jump)
key_press_Y         = inputdog_pressed("Y",playerSlot);     //Tap to (TopDown: Progress Talking,    Side: Attack)

key_hold_A          = inputdog_down("A",playerSlot);        //Hold down to (TopDown: Run,           Side: Hold/Charge Attack)
key_hold_B          = inputdog_down("B",playerSlot);        //Hold down to (TopDown: Throw Disk,    Side: Full Jump)
key_hold_X          = inputdog_down("X",playerSlot);        //Hold down to (TopDown: Throw Disk,    Side: Full Jump)
key_hold_Y          = inputdog_down("Y",playerSlot);        //Hold down to (TopDown: Run,           Side: Hold/Charge Attack)

key_release_A       = inputdog_released("A",playerSlot);    //
key_release_B       = inputdog_released("B",playerSlot);    //

    //Start Button
key_press_start   = inputdog_pressed("start",playerSlot);    //Release button to pause the game and go into the pause menue.

    //Select Button
key_press_select   = inputdog_pressed("select",playerSlot);    //
    


