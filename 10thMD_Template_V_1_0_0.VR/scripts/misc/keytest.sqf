toggled = toggled + 1; 

while {toggled == 1} do { 
    if ((animationState player) != "AmovPercMstpSnonWnonDnon_Ease") then { 
        player playMove "AmovPercMstpSnonWnonDnon_Ease"; 
    }; 
}; 

if ((animationState player) != "AmovPercMstpSnonWnonDnon_EaseOut") then { 
    player switchMove "AmovPercMstpSnonWnonDnon_EaseOut"; 
    toggled = 0; 
    player action ["SwitchWeapon", player, player, 99]; 
};  