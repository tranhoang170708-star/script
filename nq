repeat task.wait() until game:IsLoaded()

-- Đã gộp toàn bộ link (kể cả phần Premium cũ) vào chung một bảng duy nhất
local Games = {
    ["https://api.luarmor.net/files/v3/loaders/24926e795a0abeb4f7656c3399be63c7.lua"] = {9213039},
    ["https://api.luarmor.net/files/v3/loaders/909577fb8b087e6280216618d6a22d9a.lua"] = {361078446},
    ["https://api.luarmor.net/files/v3/loaders/22da1ffd7deeefa54adf18a2028b94a9.lua"] = {614697100},
    ["https://api.luarmor.net/files/v3/loaders/ded2f3d3db2e6b23a33e305e56f3a8f3.lua"] = {35812225,15009415,34644452,16819392,5292947,33910482,36029495},
    ["https://api.luarmor.net/files/v3/loaders/29f064d8809f611980f08e70689117c9.lua"] = {35821155},
    ["https://api.luarmor.net/files/v3/loaders/ec680d5791f845734a77ab9264d87b4a.lua"] = {35119227},
    ["https://api.luarmor.net/files/v3/loaders/5ae870ce8d0adf02545dacc592ce7e72.lua"] = {35757133},
    ["https://api.luarmor.net/files/v3/loaders/24f452a9bd205bc8c83ecad415874ce2.lua"] = {15009415,16819392,35812225,34644452,5292947,9213039,35821155,33910482,36029495,361078446,35757133,35119227,614697100},
    ["Memesea"] = {10260193230},
    ["AA"] = {10611639},
    ["hecker)"] = {12229756,34873522},
}

if getgenv().ExecuteYuto ~= nil then
    return
end

for i,v in pairs(Games) do
    for _,k in pairs(v) do
        if k == game.PlaceId or k == game.CreatorId then
            getgenv().ExecuteYuto = true
            if string.find(i,"luarmor") then
                pcall(function ()
                    spawn(function()
                        repeat task.wait() 
                            if getgenv().Config == nil and getgenv().YutoHub == nil then
                                pcall(function() loadstring(game:HttpGet((i)))() end)
                            end
                            task.wait(20)
                        until getgenv().Config ~= nil or getgenv().YutoHub ~= nil
                    end)
                end)
            else
                pcall(function ()
                    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Binintrozza/yutv2e/main/"..tostring(i))))()	
                end)
            end
            break
        end
    end
end
