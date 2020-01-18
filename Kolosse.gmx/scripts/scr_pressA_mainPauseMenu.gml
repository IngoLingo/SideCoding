switch (pauseM_selection) {
    case 0: 
        pauseMenuState = pause_st.none;
        buttonDelay = delayNum;
        break;
        
    case 1: 
        pauseMenuState = pause_st.index;
        buttonDelay = delayNum;
        break;
        
    case 2: 
        pauseMenuState = pause_st.party;
        buttonDelay = delayNum;
        break;
        
    case 3: 
        pauseMenuState = pause_st.bag;
        buttonDelay = delayNum;
        break;
        
    case 4: 
        checks_selection = 0;
        pauseMenuState = pause_st.save;
        buttonDelay = delayNum;
        break;

    case 5: 
        pauseMenuState = pause_st.options;
        buttonDelay = delayNum;
        break;
}
