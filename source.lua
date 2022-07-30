if syn then
    Players.LocalPlayer.OnTeleport:Connect(function(State)
    	if State == Enum.TeleportState.Started then
    		if queueteleport then
    			queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/Code1Tech/sfp_underdev/main/source.lua'))()")
    		end
    	end
    end)
    i = 0
    while i < 18 do
        i = i + 1
    	for i,v in pairs(game.Workspace:GetDescendants()) do
    		if v:IsA('ProximityPrompt') then
    			fireproximityprompt(v)
    			wait(0.2)
    		end
    	end
    	wait(1)
    end
    if #Players:GetPlayers() <= 1 then
		Players.LocalPlayer:Kick('\nRejoining...')
		wait()
		TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
	else
		TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Players.LocalPlayer)
	end
end
