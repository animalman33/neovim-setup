local db = require("dashboard")

db.setup({
    theme = 'doom',
    config = {
        center = {
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Find File           ',
                desc_hl = 'String',
                key = 'b',
                keymap = 'SPC f f',
                key_hl = 'Number',
                action = 'Telescope find_files'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Project Finder',
                desc_hl = 'String',
                key = 'f',
                keymap = 'SPC p p',
                key_hl = 'Number',
                action = 'Telescope projects'
            },
        },
    }
})
