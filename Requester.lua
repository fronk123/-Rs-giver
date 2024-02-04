http = game:GetService("HttpService")
message = "message sent from roblox"
game.ReplicatedStorage.RemoteEvent.OnServerEvent:Connect(function()
	print("lol")
	print("SENT >> "..message)
	http:PostAsync("http://ninjabunzz.pythonanywhere.com/test", message,Enum.HttpContentType.ApplicationUrlEncoded)
	print("RECEIVED >> "..http:GetAsync("http://ninjabunzz.pythonanywhere.com/test"))
	if http:GetAsync("http://ninjabunzz.pythonanywhere.com/test") == "this is a response to roblox instance, sent from python" then
		print("haha")
		script.Parent.Part.Shape = Enum.PartType.Ball
	end
end)
