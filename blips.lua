local blipData = {
  { name = 'National Guard', coords = vector3(-2353.12, 3247.39, 68.45), sprite = 560, color = 5 },
  { name = 'LSPD', coords = vector3(428.23, -984.28, 29.76), sprite = 60, color = 29 },
  { name = 'SAHP', coords = vector3(-451.55, 6014.25, 31.71), sprite = 60, color = 29 },
  { name = 'LSPD', coords = vector3(-1085.84, -832.76, 22.81), sprite = 60, color = 29 },
  { name = 'SAHP', coords = vector3(1852.05, 3692.03, 34.98), sprite = 60, color = 29 },
  { name = 'Staatsgefängnis', coords = vector3(1845.90, 2585.87, 45.67), sprite = 60, color = 29 },
  { name = 'Medical Department', coords = vector3(-262.13, 6325.47, 34.24), sprite = 61, color = 1 },
  { name = 'Medical Department', coords = vector3(1826.66, 3679.30, 35.60), sprite = 61, color = 1 },
  { name = 'Medical Department', coords = vector3(329.11, -578.91, 60.50), sprite = 61, color = 1 },
  { name = 'Government', coords = vector3(-549.798, -196.826, 59.637), sprite = 419, color = 0 },
  { name = 'Bank', coords = vector3(149.9, -1040.46, 29.37), sprite = 605, color = 0 },
  { name = 'Bank', coords = vector3(314.23, -278.83, 54.17), sprite = 605, color = 0 },
  { name = 'Bank', coords = vector3(-350.8, -49.57, 49.04), sprite = 605, color = 0 },
  { name = 'Bank', coords = vector3(-1213.0, -330.39, 37.79), sprite = 605, color = 0 },
  { name = 'Bank', coords = vector3(-2962.71, 483.0, 15.7), sprite = 605, color = 0 },
  { name = 'Bank', coords = vector3(1175.07, 2706.41, 38.09), sprite = 605, color = 0 },
  { name = 'Bank', coords = vector3(329.11, 223.20, 106.29), sprite = 605, color = 0 },
  { name = 'Bank', coords = vector3(-113.22, 6470.03, 31.63), sprite = 605, color = 0 },
  { name = 'Unicorn', coords = vector3(115.874, -1299.233, 34.022), sprite = 605, color = 0 },
  { name = 'Cayo Perico', coords = vector3(5266.31, -5427.6, 141.05), sprite = 121, color = 0 },
  { name = 'Ballas', coords = vector3(104.34, -1939.85, 20.8), sprite = 543, color = 83 },
  { name = 'The Families', coords = vector3(-183.7, -1601.09, 34.23), sprite = 543, color = 2 },
  { name = 'Bloods', coords = vector3(441.6, -1532.77, 29.21), sprite = 543, color = 1 },
  { name = 'Marabunta Grande', coords = vector3(946.56, -2185.76, 30.56), sprite = 543, color = 3 },
  { name = 'Vagos', coords = vector3(1412.73, -1510.89, 59.63), sprite = 543, color = 5 },
  { name = 'FIB', coords = vector3(2521.82, -384.17, 92.99), sprite = 60, color = 29 },
  { name = 'Kirche', coords = vector3(-785.19, -708.89, 30.33), sprite = 621, color = 1 },
  { name = 'Weazel News / LifeInvader', coords = vector3(-587.8, -922.74, 23.87), sprite = 459, color = 1 },
  { name = 'Weazel News / LifeInvader', coords = vector3(-1080.84, -248.16, 37.76), sprite = 459, color = 1 },
}

Citizen.CreateThread(function()
  for _, data in ipairs(blipData) do
      local blip = AddBlipForCoord(data.coords.x, data.coords.y, data.coords.z)
      
      SetBlipSprite(blip, data.sprite)
      SetBlipDisplay(blip, 4)
      SetBlipScale(blip, 0.6)
      SetBlipColour(blip, data.color)
      SetBlipAsShortRange(blip, true)
      
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(data.name)
      EndTextCommandSetBlipName(blip)
  end
end)