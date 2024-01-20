RegisterCommand("amvfind", function(source, args, rawCommand)
    local numAmvs = args[1] and tonumber(args[1]) or 1
    local position = GetEntityCoords(PlayerPedId())
    local nearestAmvs = {}

    for filename, amvFileData in pairs(allAmvData) do
        for itemIndex, amvData in ipairs(amvFileData) do
            local amvPosVec = vec3(
                tonumber(amvData.position.x),
                tonumber(amvData.position.y),
                tonumber(amvData.position.z)
            )
            local dist = #(position - amvPosVec)
            if #nearestAmvs < 10 or dist < nearestAmvs[10].dist then
                local amvOut = {
                    dist = dist,
                    exterior = amvData.exterior,
                    interior = amvData.interior,
                    position = amvData.position,
                    filename = filename,
                    itemIndex = itemIndex-1,
                }
                if #nearestAmvs == 0 then
                    table.insert(nearestAmvs, amvOut);
                else
                    for index, amv in ipairs(nearestAmvs) do
                        if dist < amv.dist then
                            table.insert(nearestAmvs, index, amvOut);
                            break
                        end
                    end
                end
                if #nearestAmvs > 10 then nearestAmvs[11] = nil; end
            end
        end
    end

    if nearestAmvs and next(nearestAmvs) == nil then print("Failed to find AMV"); end
    for index, amv in ipairs(nearestAmvs) do
        if index > numAmvs then break; end
        print(("%s%s item=%s dist=%.2f <position x=\"%s\" y=\"%s\" z=\"%s\" />%s%s%s"):format(
            numAmvs > 1 and tostring(index)..": " or "",
            amv.filename,
            amv.itemIndex,
            amv.dist,
            amv.position.x,
            amv.position.y,
            amv.position.z,
            amv.exterior and " exterior" or "",
            amv.exterior and amv.interior and "/" or " ",
            amv.interior and "interior" or ""
        ))
    end
end, false)
