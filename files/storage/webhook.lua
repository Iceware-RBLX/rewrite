local HttpService = cloneref(game:GetService("HttpService"))

local webhook = {}
webhook.__index = webhook

function webhook.new(url)
	return setmetatable({ url = url }, webhook)
end

function webhook:send(data)
	if not request then return end -- wat the fuck

	local body = data
	if typeof(data) == "table" then
		body = HttpService:JSONEncode(data)
	end

	return request({
		Url = self.url,
		Method = "POST",
		Headers = { ["Content-Type"] = "application/json" },
		Body = body,
	})
end

return webhook
