-- # POKEMON ID # --
local speciesId = "KOLTA"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "PONYTA" },
        definition = {
            id = speciesId,
            name = "KOLTA",
            types = { "POISON", "POISON" },
            baseStats = {
                hp              = 35,
                attack          = 70,
                defense         = 40,
                speed           = 70,
                specialAttack   = 55,
                specialDefense  = 60,
            },
            catchRate = 190,
            baseExp = 82,
            growthRate = "GROWTH_MEDIUM_FAST",
            levelMoves = {
                { level = 1,  move = "TACKLE"       },
                { level = 4,  move = "GROWL"        },
                { level = 8,  move = "TAIL_WHIP"    },
                { level = 13, move = "EMBER"        },
                { level = 19, move = "STOMP"        },
                { level = 26, move = "FIRE_SPIN"    },
                { level = 34, move = "TAKE_DOWN"    },
                { level = 43, move = "AGILITY"      },
                { level = 53, move = "FIRE_BLAST"   },
            },
            tmhm = {
                -- TMs
                "HEADBUTT",     "CURSE",        "TOXIC",            "HIDDEN_POWER",     "SUNNY_DAY",
                "SNORE",        "PROTECT",      "ENDURE",           "FRUSTRATION",      "IRON_TAIL",
                "RETURN",       "DOUBLE_TEAM",  "SWAGGER",          "SLEEP_TALK",       "FIRE_BLAST",
                "SWIFT",        "REST",         "ATTRACT",
            },
            evolutions = {
                { into = "PONYTA", method = "EVOLVE_HAPPINESS", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "CHARM",         "DOUBLE_KICK", "FLAME_WHEEL",      "HYPNOSIS",         "QUICK_ATTACK",
                "THRASH",
            },
            eggSteps = 20,
            genderRatio = 127, -- 50/50 : male/female
            spriteFront = mod.assets:path("assets/battle/kolta/KoltaF.png"),
            spriteBack = mod.assets:path("assets/battle/kolta/KoltaB.png"),
            picSize = 5,
            cry = "PONYTA",
            dexEntry = {
                kind = "FIRE HORSE",
                heightFt    = 1,
                heightIn    = 5,
                weightLbs   = 33.05,
                text    = "It can stand<NEXT>minutes after<NEXT>birth and gallop",
                text2   = "25mph the next<NEXT>day.",
            },
            palette = {
                normal = {
                    { 209,  168, 53  },
                    { 178,  0,   0   },
                },
                shiny = {
                    { 181,  181, 121 },
                    { 156,  94,  88  },
                },
            },
            iconFallback = "PONYTA",
            paletteFallback = "PONYTA",
        },
    }
end