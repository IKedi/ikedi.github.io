return

--Not done (use the script below)










local info = {
    multiplier = '1', --If you need something other than multiplier then 'SomethingOtherThanMultiplier@Value'
	autosell = 'false', --If you need something other than auto sell then just change the value to it
	creator = 'Username of the script creator'
}

local script_ = [[print'OOF']] --Will change from: (_G.a to killswitch, local mul to multiplier, local sell to autosell)




local _sinfo = '--'

local function num_encryption(input) --'Encryption' so skids won't patch their game when they see it on the github
	input = input:gsub('0', 'XO')
	input = input:gsub('1', 'oT')
	input = input:gsub('2', 'jD')
	input = input:gsub('3', 'QB')
	input = input:gsub('4', 'oE')
	input = input:gsub('5', 'oW')
	input = input:gsub('6', 'wY')
	input = input:gsub('7', 'nK')
	input = input:gsub('8', 'Zr')
	input = input:gsub('9', 'vc')
	
	return input --returns the 'encrypted' string
end

local function convert()
    script_ = script_:gsub('_G.a', '_G.sgd_kill')  --Replace first string with second one. Example: 
    script_ = script_:gsub('local mul', '_G.multiplier')	--str = 'gay bitch' print(str:gsub('gay', 'not gay'))
    script_ = script_:gsub('local sell', '_G.sgd_autosell') --Output: not gay bitch
	
	local function set_(name, value)
		if value:find('@') then --If value has @ then change name (variable) to the string before the @
			local _split = string.split(value, '@')
			value = _split[1]
			name = _split[2]
		end

		_sinfo = _sinfo..'|'..name..':'..value..'|,' --Weird formatting on the scripts that i will change cuz it sucks
	end

	for var, val in pairs(info) do --Get variables from the 'info' dictionary
		if var == 'multiplier' then
			set_('Multiplier', val)
		elseif var == 'autosell' then
			set_('AutoSell', val)
		elseif var == 'creator' then
			set_('By', val)
		else
			set_(var, val)
		end
	end

	_sinfo = _sinfo:sub(1, -2) --Remove last character (,)

	script_ = _sinfo..'\n\n'..script_ --Combine the info and the string
end

local function createfile()
    convert()
    wait()
    writefile(num_encryption(tostring(game.PlaceId))..'.lua', script_) --Figure this out by yourself
end

createfile()
