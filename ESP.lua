
while task.wait() do
    for _,v in game:FindService("Players"):GetPlayers() do
      if v.Character and v.Name ~= game.Players.LocalPlayer.Name then 
        local existingHighlight = v.Character:FindFirstChild("Highlight")
        if not existingHighlight then 
          local cham = Instance.new("Highlight", v.Character) 
        end
      end
    end
end

  
