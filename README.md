# gh-benny
[![MasterHead](https://cdn.discordapp.com/attachments/1009569570782195732/1076111898468171827/rainbow-loading-bar.gif)](https://google.com/)
- Radial Menu Benny Repair made for Gabz Hub

## Info
**[edited qb-radialmenu](https://github.com/jay-fivem/qb-radialmenu)**
- Used for qb-radialmenu
## or add these into your qb-radialmenu/client/main.lua
```
exports('AddOption', function(id, data)
    Config.MenuItems[id] = data
end)

exports('RemoveOption', function(id)
    Config.MenuItems[id] = nil
end)
```
