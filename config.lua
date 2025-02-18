Config = {}

Config.Locale = "en"  -- Language

Config.Elevators = {
    {
        name = "Pillbox Hill", -- Elevator Name
        positions = {
            {label = "Garage Floor", coords = vector3(359.5, -584.93, 28.82)}, -- Floor Coords
            {label = "Roof Floor", coords = vector3(338.53, -583.76, 74.17)}, -- Floor Coords
        },
        targetCoords = vector3(325.57, -598.67, 43.29), -- Elevator Entrance
        targetHeading = 0.0 
    },
    {
        name = "Maze Bank", -- Elevator Name
        positions = {
            {label = "First Floor", coords = vector3(-73.84, -814.75, 326.18)}, -- Floor Coords
            {label = "Second Floor", coords = vector3(10.0, 10.0, 50.0)}, -- Floor Coords
        },
        targetCoords = vector3(-71.34, -801.36, 42.98), -- Elevator Entrance
        targetHeading = 90.0
    }
}
