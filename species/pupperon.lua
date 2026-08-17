-- # POKEMON ID # --
local speciesId = "PUPPERON"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "GROWLITHE" },
        definition = {
            id = speciesId,
            name = "PUPPERON",
            types = { "FIRE", "FIRE" },
            baseStats = {
                hp              = 40,
                attack          = 55,
                defense         = 30,
                speed           = 40,
                specialAttack   = 60,
                specialDefense  = 45,
            },
            catchRate = 190,
            baseExp = 70,
            growthRate = "GROWTH_SLOW",
            levelMoves = {
                { level = 1,  move = "BITE"         },
                { level = 1,  move = "ROAR"         },
                { level = 9,  move = "EMBER"        },
                { level = 18, move = "LEER"         },
                { level = 26, move = "TAKE_DOWN"    },
                { level = 34, move = "FLAME_WHEEL"  },
                { level = 42, move = "AGILITY"      },
                { level = 50, move = "FLAMETHROWER" },
            },
            tmhm = {
                -- TMs
                "HEADBUTT",     "CURSE",        "ROAR",             "TOXIC",            "ROCK_SMASH",
                "HIDDEN_POWER", "SUNNY_DAY",    "SNORE",            "PROTECT",          "ENDURE",
                "FRUSTRATION",  "IRON_TAIL",    "DRAGONBREATH",     "RETURN",           "DIG",
                "DOUBLE_TEAM",  "SWAGGER",      "SLEEP_TALK",       "FIRE_BLAST",       "SWIFT",
                "REST",        "ATTRACT",
            },
            evolutions = {
                { into = "GROWLITHE", method = "EVOLVE_HAPPINESS", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "BODY_SLAM",    "CRUNCH",       "FIRE_SPIN",        "SAFEGUARD",        "THRASH",
            },
            eggSteps = 20,
            genderRatio = 63, -- 75/25 : male/female
            spriteFront = mod.assets:path("assets/battle/pupperon/PupperonF.png"),
            spriteBack = mod.assets:path("assets/battle/pupperon/PupperonB.png"),
            picSize = 5,
            cry = "GROWLITHE",
            dexEntry = {
                kind = "PUPPY",
                heightFt    = 1,
                heightIn    = 02,
                weightLbs   = 20.95,
                text    = "It will chase<NEXT>everything it<NEXT>sees.",
                text2   = "Its bark is<NEXT>worse than its<NEXT>bite.",
            },
            palette = {
                normal = {
                    { 255,  74,  33  },
                    { 93,   27,  12  },
                },
                shiny = {
                    { 173,  107, 0   },
                    { 76,   48,  0   },
                },
            },
            iconFallback = "GROWLITHE",
            paletteFallback = "GROWLITHE",
        },
    }
end