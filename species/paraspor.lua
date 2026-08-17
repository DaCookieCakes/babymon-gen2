-- # POKEMON ID # --
local speciesId = "PARASPOR"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "PARAS" },
        definition = {
            id = speciesId,
            name = "PARASPOR",
            types = { "BUG", "GRASS" },
            baseStats = {
                hp              = 20,
                attack          = 55,
                defense         = 40,
                speed           = 5,
                specialAttack   = 35,
                specialDefense  = 50,
            },
            catchRate = 190,
            baseExp = 57,
            growthRate = "GROWTH_MEDIUM_FAST",
            levelMoves = {
                { level = 1,  move = "SCRATCH"      },
                { level = 7,  move = "STUN_SPORE"   },
                { level = 13, move = "POISONPOWDER" },
                { level = 19, move = "LEECH_LIFE"   },
                { level = 25, move = "SPORE"        },
                { level = 31, move = "SLASH"        },
                { level = 37, move = "GROWTH"       },
                { level = 43, move = "GIGA_DRAIN"   },
            },
            tmhm = {
                -- TMs
                "CURSE",        "TOXIC",        "ROCK_SMASH",       "HIDDEN_POWER",     "SUNNY_DAY",
                "SWEET_SCENT",  "SNORE",        "PROTECT",          "GIGA_DRAIN",       "ENDURE",
                "FRUSTRATION",  "SOLARBEAM",    "RETURN",           "DIG",              "DOUBLE_TEAM",
                "SWAGGER",      "SLEEP_TALK",   "SLUDGE_BOMB",      "REST",             "ATTRACT",
                "THIEF",        "FURY_CUTTER",
                -- HMs
                "CUT",          "FLASH",
            },
            evolutions = {
                { into = "PARAS", method = "EVOLVE_HAPPINESS", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "COUNTER",      "FALSE_SWIPE",  "FLAIL",        "LIGHT_SCREEN", "PSYBEAM",
                "PURSUIT",      "SCREECH",      "SWEET_SCENT",  
            },
            eggSteps = 20,
            genderRatio = 127, -- 50/50 : male/female
            spriteFront = mod.assets:path("assets/battle/paraspor/ParasporF.png"),
            spriteBack = mod.assets:path("assets/battle/paraspor/ParasporB.png"),
            picSize = 5,
            cry = "PARAS",
            dexEntry = {
                kind = "MUSHROOM",
                heightFt    = 0,
                heightIn    = 50,
                weightLbs   = 5.95,
                text    = "The mushroom it<NEXT>resides in is<NEXT>almost ready to",
                text2   = "release its<NEXT>spores.",
            },
            palette = {
                normal = {
                    { 255, 127, 0   },
                    { 255, 0,   0   },
                },
                shiny = {
                    { 222, 156, 25  },
                    { 115, 108, 8   },
                },
            },
            iconFallback = "PARAS",
            paletteFallback = "PARAS",
        },
    }
end