local hive = {
    [1] = {
        [1] = "Vicious",
        [2] = "Shy",
        [3] = "Carpenter",
        [4] = "Vector",
        [5] = "Vector",
        [6] = "Vector",
        [7] = "Vector",
        [8] = "Spicy",
        [9] = "Precise",
        [10] = "Precise"
    },
    [2] = {
        [1] = "Crimson",
        [2] = "Lion",
        [3] = "Tadpole",
        [4] = "Tadpole",
        [5] = "Vector",
        [6] = "Spicy",
        [7] = "Spicy",
        [8] = "Precise",
        [9] = "Precise",
        [10] = "Precise"
    },
    [3] = {
        [1] = "Bear",
        [2] = "Digital",
        [3] = "Brave",
        [4] = "Basic",
        [5] = "Buoyant",
        [6] = "Vector",
        [7] = "Vector",
        [8] = "Spicy",
        [9] = "Spicy",
        [10] = "Precise"
    },
    [4] = {
        [1] = "Photon",
        [2] = "Riley",
        [3] = "Tadpole",
        [4] = "Tadpole",
        [5] = "Vector",
        [6] = "Spicy",
        [7] = "Spicy",
        [8] = "Precise",
        [9] = "Precise",
        [10] = "Precise"
    },
    [5] = {
        [1] = "Tabby",
        [2] = "Commander",
        [3] = "Carpenter",
        [4] = "Vector",
        [5] = "Vector",
        [6] = "Vector",
        [7] = "Vector",
        [8] = "Spicy",
        [9] = "Precise",
        [10] = "Precise"
    }
}

local plrhive = game:GetService("Players").LocalPlayer.Honeycomb.Value.Cells
local r = game:GetService("ReplicatedStorage").Events.ConstructHiveCellFromEgg

for col,v in pairs(hive) do
    for row,v in pairs(v) do
        local cell = plrhive:FindFirstChild("C" .. col .. "," .. row)
		if cell ~= nil and cell.CellType.Value ~= v .. "Bee" then
            r:InvokeServer(col, row, v .. "Bee", 1, false)
            task.wait(0.25)
        end
    end
end
