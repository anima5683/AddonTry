AnimaFirstTry = AnimaFirstTry or {}

AnimaFirstTry.name = "AnimaFirstTry" 

local EM = GetEventManger() 


function AnimaFirstTry.OnPlayerActivated() 
    d("hello world")
end

function massivefalldmg()
    d("that was close, careful next time")
end


function AnimaFirstTry.Initialize(var1, var2) 
    -- hier wird mein addon initializiert 
    d("mein addon wurde initialisiert")
    EM:RegisterForEvent( AnimaFirstTry.name, EVENT_PLAYER_ACTIVATED, AnimaFirstTry.OnPlayerActivated )  
    EM:RegisterForEvent(AnimaFirstTry2.name, EVENT_HIGH_FALL_DAMAGE, massivefalldmg())
end


local OnAddonLoaded(_, addonName) 
    if addonName == AnimaFirstTry.name then  
        AnimaFirstTry.Initialize() 
        EM:UnregisterForEvent( AnimaFirstTry.name, EVENT_ADD_ON_LOADED )
    end
end 



EVENT_MANAGER:RegisterForEvent( AnimaFirstTry.name, EVENT_ADD_ON_LOADED, OnAddonLoaded )  