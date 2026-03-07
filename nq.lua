repeat task.wait() until game:IsLoaded()

-- Ngăn chặn chạy chồng nhiều script
if getgenv().ExecuteYuto then
    return
end

-- Bảng danh sách Game và Link Load (Đã gộp tất cả link Premium vào danh sách mặc định)
local Games = {
    -- Các link Luarmor (Đã chuyển từ phần Premium ra ngoài để chạy tự do)
    ["https://api.luarmor.net/files/v3/loaders/24926e795a0abeb4f7656c3399be63c7.lua"] = {9213039},
    ["https://api.luarmor.net/files/v3/loaders/909577fb8b087e6280216618d6a22d9a.lua"] = {361078446},
    ["https://api.luarmor.net/files/v3/loaders/22da1ffd7deeefa54adf18a2028b94a9.lua"] = {614697100},
    ["https://api.luarmor.net/files/v3/loaders/ded2f3d3db2e6b23a33e305e56f3a8f3.lua"] = {35812225, 15009415, 34644452, 16819392, 5292947, 33910482, 36029495},
    ["https://api.luarmor.net/files/v3/loaders/29f064d8809f611980f08e70689117c9.lua"] = {35821155},
    ["https://api.luarmor.net/files/v3/loaders/ec680d5791f845734a77ab9264d87b4a.lua"] = {35119227},
    ["https://api.luarmor.net/files/v3/loaders/5ae870ce8d0adf02545dacc592ce7e72.lua"] = {35757133},
    
    -- Các link Github hoặc Hub khác
    ["Memesea"] = {10260193230},
    ["AA"] = {10611639},
    ["hecker)"] = {12229756, 34873522},
}

-- Vòng lặp kiểm tra Game và Thực thi
for link, ids in pairs(Games) do
    for _, id in pairs(ids) do
        if id == game.PlaceId or id == game.CreatorId then
            getgenv().ExecuteYuto = true
            
            -- Nếu là link Luarmor
            if string.find(link, "luarmor") then
                task.spawn(function()
                    repeat
                        if getgenv().Config == nil and getgenv().YutoHub == nil then
                            pcall(function()
                                loadstring(game:HttpGet(link))()
                            end)
                        end
                        task.wait(15) -- Thử lại sau 15 giây nếu chưa load được
                    until getgenv().Config ~= nil or getgenv().YutoHub ~= nil
                end)
            else
                -- Nếu là link Github (Yuto V2)
                pcall(function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Binintrozza/yutv2e/main/" .. tostring(link)))()
                end)
            end
            break
        end
    end
end
