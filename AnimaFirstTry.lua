AnimaFirstTry = AnimaFirstTry or {}

AnimaFirstTry.name = "AnimaFirstTry" 

local EM = GetEventManager() 


function AnimaFirstTry.OnPlayerActivated() 
    d("hello world")
end

function AnimaFirstTry.Falldmg()
    d("that was close careful next time")
    EM:UnregisterForEvent(AnimaFirstTry.name, EVENT_LOW_FALL_DAMAGE, AnimaFirstTry.Falldmg)
end


function AnimaFirstTry.Initialize(var1, var2) 
    -- hier wird mein addon initializiert 
    d("mein addon wurde initialisiert")
    EM:RegisterForEvent( AnimaFirstTry.name, EVENT_PLAYER_ACTIVATED, AnimaFirstTry.OnPlayerActivated )  
    EM:RegisterForEvent(AnimaFirstTry.name, EVENT_LOW_FALL_DAMAGE, AnimaFirstTry.Falldmg )
end


local function OnAddonLoaded(_, addonName) 
    if addonName == AnimaFirstTry.name then  
        AnimaFirstTry.Initialize() 
        EM:UnregisterForEvent( AnimaFirstTry.name, EVENT_ADD_ON_LOADED, OnAddonLoaded )
    end
end 



EVENT_MANAGER:RegisterForEvent( AnimaFirstTry.name, EVENT_ADD_ON_LOADED, OnAddonLoaded )  