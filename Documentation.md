if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

function CheckQuest()
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
         if MyLevel == 1 or MyLevel <= 9 then
              Mon = "BanditQuest1"
              LevelQuest = 1
              NameMon = "Bandit"
              CFarmeQuest = CFarme.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
              CFarmeMon = CFarme.new(1353.44885, 3.40935516, 1376.92029, 0.776053488, -6.97791975e-08, 0.630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, 0.776053488)
elseif MyLevel == 10 or MyLevel <= 14 then
              Mon = "JungleQuest"
              LevelQuest = 1
              NameMon = "Monkey"
              CFarmeQuest = CFarme.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
              CFarmeMon = CFarme.new(-1402.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
elseif MyLevel == 15 or MyLevel <= 29 then
              Mon = "JungleQuest"
              LevelQuest = 2
              NameMon = "Gorilla"
              CFarmeQuest = CFarme.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
              CFarmeMon = CFarme.new(-1267.89001, 66.2034225, -531.818115, -0.813996196, -5.25169774e-08, -0.580869019, -5.58769671e-08, 1, -1.21082593e-08, 0.580869019, 2.26011476e-08, -0.813996196)
elseif MyLevel == 30 or MyLevel <= 39 then
              Mon = "BuggyQuest1"
              LevelQuest = 1
              NameMon = "Pirate"
              CFarmeQuest = CFarme.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
              CFarmeMon = CFarme.new(-1169.5365, 5.09531212, 3933.84082, -0.971822679, -3.73200315e-09, 0.235713184, -4.16762763e-10, 1, 1.41145424e-08, -0.235713184, 1.3618596e-08, -0.971822679)
elseif MyLevel == 40 or MyLevel <= 59 then
              Mon = "BuggyQuest1"
              LevelQuest = 2
              NameMon = "Brute"
              CFarmeQuest = CFarme.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
              CFarmeMon = CFarme.new(-1165.09985, 15.1531372, 4363.51514, -0.962800264, 1.17564889e-06, 0.270213336, 2.60172015e-07, 1, -3.4237969e-06, -0.270213336, -3.22613073e-06, -0.962800264)
elseif MyLevel == 60 or MyLevel <= 74 then
              Mon = "DesertQuest"
              LevelQuest = 1
              NameMon = "Desert Bandit"
              CFarmeQuest = CFarme.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
              CFarmeMon = CFarme.new(932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
elseif MyLevel == 75 or MyLevel <= 99 then
              Mon = "DesertQuest"
              LevelQuest = 2
              NameMon = "Desert Officer"
              CFarmeQuest = CFarme.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
              CFarmeMon = CFarme.new(1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-08, -0.070099175, -1.69377223e-08, 1, -8.17798806e-08, 0.070099175, -8.03913949e-08, -0.997540116)
elseif MyLevel == 100 or MyLevel <= 119 then
              Mon = "SnowQuest"
              LevelQuest = 2
              NameMon = "Snowman"
              CFarmeQuest = CFarme.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
              CFarmeMon = CFarme.new(1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-08, -0.162211925, 7.71531674e-08, 1, 6.08143536e-09, 0.162211925, -6.51427134e-09, -0.986755967)
        end
    end
end
