if not lib then return end

local Utils = {}

local webHook = GetConvar('inventory:webhook', '')

---Files served by the server's own resources (https://cfx-nui-<resource>/..., nui://):
---they can only point at files a resource declares in its files{}, so there is
---nothing to vet and nothing to report. MyCity_Youtool's furniture pictures use it.
---@param url string?
function Utils.IsLocalImageUrl(url)
	return type(url) == 'string' and (url:find('^https://cfx%-nui%-') or url:find('^nui://')) ~= nil
end

if webHook ~= '' then
	local validHosts = {
		['i.imgur.com'] = true,
		['r2.fivemanage.com'] = true,
		['i.fmfile.com'] = true
	}

	local validExtensions = {
		['png'] = true,
		['apng'] = true,
		['webp'] = true,
		['jpg'] = true,
	}

	local headers = { ['Content-Type'] = 'application/json' }

	function Utils.IsValidImageUrl(url)
		local host, extension = url:match('^https?://([^/]+).+%.([%l]+)')
		return host and extension and validHosts[host] and validExtensions[extension]
	end

	---@param title string
	---@param message string
	---@param image string
	function Utils.DiscordEmbed(title, message, image, color)
		PerformHttpRequest(webHook, function() end, 'POST', json.encode({
			username = 'ox_inventory', embeds = {
				{
					title = title,
					color = color,
					footer = {
						text = os.date('%c'),
					},
					description = message,
					thumbnail = {
						url = image,
						width = 100,
					}
				}
			}
		}), headers)
	end
end

return Utils
