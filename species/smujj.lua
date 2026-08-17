-- # POKEMON ID # --
local speciesId = "SMUJJ"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "GRIMER" },
        definition = {
            id = speciesId,
            name = "SMUJJ",
            types = { "POISON", "POISON" },
            baseStats = {
                hp              = 65,
                attack          = 65,
                defense         = 35,
                speed           = 5,
                specialAttack   = 30,
                specialDefense  = 45,
            },
            catchRate = 190,
            baseExp = 65,
            growthRate = "GROWTH_MEDIUM_FAST",
            levelMoves = {
                { level = 1,  move = "POISON_GAS"   },
                { level = 1,  move = "POUND"        },
                { level = 5,  move = "HARDEN"       },
                { level = 10, move = "DISABLE"      },
                { level = 16, move = "SLUDGE"       },
                { level = 23, move = "MINIMIZE"     },
                { level = 31, move = "SCREECH"      },
                { level = 40, move = "ACID_ARMOR"   },
                { level = 50, move = "SLUDGE_BOMB"  },
            },
            tmhm = {
                -- TMs
                "DYNAMICPUNCH", "CURSE",        "TOXIC",            "ZAP_CANNON",       "HIDDEN_POWER",
                "SUNNY_DAY",    "SNORE",        "PROTECT",          "GIGA_DRAIN",       "ENDURE",
                "FRUSTRATION",  "THUNDER",      "DRAGONBREATH",     "RETURN",           "MUD_SLAP",
                "DOUBLE_TEAM",  "ICE_PUNCH",    "SWAGGER",          "SLEEP_TALK",       "SLUDGE_BOMB",
                "FIRE_BLAST",   "THUNDERPUNCH", "REST",             "ATTRACT",          "THIEF",
                "FIRE_PUNCH",
            },
            evolutions = {
                { into = "GRIMER", method = "EVOLVE_HAPPINESS", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "HAZE",         "LICK",         "MEAN_LOOK",
            },
            eggSteps = 20,
            genderRatio = 127, -- 50/50 : male/female
            spriteFront = mod.assets:path("assets/battle/smujj/SmujjF.png"),
            spriteBack = mod.assets:path("assets/battle/smujj/SmujjB.png"),
            picSize = 5,
            cry = "GRIMER",
            dexEntry = {
                kind = "SLUDGE",
                heightFt    = 1,
                heightIn    = 05,
                weightLbs   = 33.05,
                text    = "It can be found<NEXT>in the pipes<NEXT>between rivers",
                text2   = "and big cities.",
            },
            palette = {
                normal = {
                    { 239,  16,  165 },
                    { 99,   8,   99  },
                },
                shiny = {
                    { 171,  202, 10   },
                    { 90,   82,  82   },
                },
            },
            iconFallback = "GRIMER",
            paletteFallback = "GRIMER",
        },
    }
end