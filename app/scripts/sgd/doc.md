# Creating scripts

**YOU NEED AN EXPLOIT THAT SUPPORTS** ```writefile()``` **FUNCTION**

You need to execute this script to get the gui:

```lua
loadstring(game:HttpGet('https://ikedi.github.io/app/scripts/sgd/ConvertScript.lua'))()
```

After you executed it you should see 2 sections:
- Script box
- Replace

## Replace

You can copy paste your script to the script box then set the replace section (It won't replace it if you leave it blank) Example:

- Kill switch set to '__a'

Script box:
```lua
local __a = true

if __a then
  print'oof'
end
```
Converted script:
```lua
_G.sgd_kill = true

if _G.sgd_kill then
  print'oof'
end
```

### WARNING 
this will change all the matching text on the script:
- Kill switch set to 'el'
Script box:
```lua
if el then
  print'testing script'
else
  print'big sad'
end
```
Converted script:
```lua
if _G.sgd_kill then
  print'testing script'
_G.sgd_killse
  print'big sad'
end
```

## Converting

Once you press the big 'Convert' Button on the Replace tab you should see an message box

There are 3 modifiers on there
- Creator
- Multiplier
- Auto Sell

Creator will set input as creater of the script

Multiplier will change scripts default multiplier

If Auto Sell is set to 'false' Auto Sell will **not** appear on the gui

### Modifying SGD gui

You can modify the main SGD gui with this Example:

Regular Multiplier box:

- Multiplier set to '123'

```Multiplier: 123```

Modified Multiplier box:

- Multiplier set to Player health@100

```Player health: 100```

#### Changing Auto Sell

Regular Auto Sell Check box:

- Multiplier set to 'true'

```Auto Sell: [x]```

Modified Auto Sell Check box:

- Auto Sell set to Kill on finish

```Kill on finish: [x]```

### Once you press 'Confirm'

You should find an file with lua extension on where ```writefile()``` creates it

(It will be in 'workspace' folder if you are using Synapse X. I don't know where other exploits output to)
