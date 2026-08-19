-- # POKEMON ID # --
local speciesId = "BIPULLA"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "GIRAFARIG" },
        definition = {
            id = speciesId,
            name = "BIPULLA",
            types = { "NORMAL", "DARK" },
            baseStats = {
                hp              = 55,
                attack          = 65,
                defense         = 50,
                speed           = 60,
                specialAttack   = 80,
                specialDefense  = 60,
            },
            catchRate = 60,
            baseExp = 159,
            growthRate = "GROWTH_MEDIUM_FAST",
            levelMoves = {
                { level = 1,  move = "CONFUSION"    },
                { level = 1,  move = "GROWL"        },
                { level = 1,  move = "TACKLE"       },
                { level = 7,  move = "CONFUSION"    },
                { level = 13, move = "STOMP"        },
                { level = 20, move = "AGILITY"      },
                { level = 30, move = "BATON_PASS"   },
                { level = 41, move = "PSYBEAM"      },
                { level = 54, move = "CRUNCH"       },  
            },
            tmhm = {
                -- TMs
                "HEADBUTT",     "CURSE",        "TOXIC",            "ZAP_CANNON",       "ROCK_SMASH",
                "PSYCH_UP",     "HIDDEN_POWER", "SUNNY_DAY",        "SNORE",            "PROTECT",
                "ENDURE",       "FRUSTRATION",  "IRON_TAIL",        "THUNDER",          "EARTHQUAKE",
                "RETURN",       "PSYCHIC_M",    "SHADOW_BALL",      "MUD_SLAP",         "DOUBLE_TEAM",
                "SWAGGER",      "SLEEP_TALK",   "SWIFT",            "DREAM_EATER",      "REST",
                "ATTRACT",      "THIEF",        "NIGHTMARE",
                -- HMs
                "STRENGTH",
            },
            evolutions = {
                { into = "GIRAFARIG", method = "EVOLVE_HAPPINESS", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "AMNESIA",      "BEAT_UP",      "FORESIGHT",        "FUTURE_SIGHT",       "TAKE_DOWN",
            },
            eggSteps = 20,
            genderRatio = 127, -- 50/50 : male/female
            spriteFront = mod.assets:path("assets/battle/bipulla/BipullaF.png"),
            spriteBack = mod.assets:path("assets/battle/bipulla/BipullaB.png"),
            picSize = 5,
            cry = "GIRAFARIG",
            dexEntry = {
                kind = "DARK TWIN",
                heightFt    = 2,
                heightIn    = 6,
                weightLbs   = 45.75,
                text    = "Though it has two<NEXT>heads, it can only<NEXT>think with one",
                text2   = "at a time.",
            },
            palette = {
                normal = {
                    { 255, 49,  8   },
                    { 74,  107, 99  },
                },
                shiny = {
                    { 255, 49,  8   },
                    { 109, 136, 255 },
                },
            },
            iconFallback = "WOBBUFFET",
            paletteFallback = "GIRAFARIG",
        },
    }
end