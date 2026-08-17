-- # POKEMON ID # --
local speciesId = "DODAERIE"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "DODUO" },
        definition = {
            id = speciesId,
            name = "DODAERIE",
            types = { "NORMAL", "FLYING" },
            baseStats = {
                hp              = 20,
                attack          = 70,
                defense         = 30,
                speed           = 55,
                specialAttack   = 25,
                specialDefense  = 30,
            },
            catchRate = 190,
            baseExp = 62,
            growthRate = "GROWTH_MEDIUM_FAST",
            levelMoves = {
                { level = 1,  move = "GROWL"        },
                { level = 1,  move = "PECK"         },
                { level = 9,  move = "PURSUIT"      },
                { level = 13, move = "FURY_ATTACK"  },
                { level = 21, move = "TRI_ATTACK"   },
                { level = 25, move = "RAGE"         },
                { level = 33, move = "DRILL_PECK"   },
                { level = 37, move = "AGILITY"      },
            },
            tmhm = {
                -- TMs
                "CURSE",        "TOXIC",        "HIDDEN_POWER",     "SUNNY_DAY",    "SNORE",
                "PROTECT",      "ENDURE",       "FRUSTRATION",      "RETURN",       "MUD_SLAP",
                "DOUBLE_TEAM",  "SWAGGER",      "SLEEP_TALK",       "SWIFT",        "REST",
                "ATTRACT",      "THIEF",        "STEEL_WING",
                -- HMs
                "FLY",
            },
            evolutions = {
                { into = "DODUO", method = "EVOLVE_HAPPINESS", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "FAINT_ATTACK", "FLAIL", "HAZE", "QUICK_ATTACK", "SUPERSONIC"
            },
            eggSteps = 20,
            genderRatio = 127, -- 50/50 : male/female
            spriteFront = mod.assets:path("assets/battle/dodaerie/DodaerieF.png"),
            spriteBack = mod.assets:path("assets/battle/dodaerie/DodaerieB.png"),
            picSize = 5,
            cry = "DODUO",
            dexEntry = {
                kind = "TWIN BIRD",
                heightFt    = 2,
                heightIn    = 03,
                weightLbs   = 43.2,
                text    = "Its hunger is<NEXT>insatiable. Its<NEXT>three heads eat",
                text2   = "5 times a day.",
            },
            palette = {
                normal = {
                    { 120, 132, 66  },
                    { 36,  66,  48  },
                },
                shiny = {
                    { 176, 165, 80  },
                    { 148, 132, 0   },
                },
            },
            iconFallback = "DODUO",
            paletteFallback = "DODUO",
        },
    }
end