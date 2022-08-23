local db = require("dashboard")

-- db.custom_conter = {
-- 	{ icon = "", desc = "Find file", action = "Telescope find_files", shortcut = "SPC f f"},
--
-- }


  db.custom_center = {
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f'},
      {icon = '  ',
      desc ='Project Finder                           ',
      action =  'Telescope projects',
      shortcut = 'SPC f b'},
      {icon = '  ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = 'SPC f w'},
    }
