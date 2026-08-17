-- # POKEMON ID # --
local speciesId = "COINPUR"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "MEOWTH" },
        definition = {
            id = speciesId,
            name = "COINPUR",
            types = { "NORMAL", "NORMAL" },
            baseStats = {
                hp              = 25,
                attack          = 30,
                defense         = 20,
                speed           = 70,
                specialAttack   = 30,
                specialDefense  = 35,
            },
            catchRate = 255,
            baseExp = 58,
            growthRate = "GROWTH_MEDIUM_FAST",
            levelMoves = {
                { level = 1,  move = "GROWL"        },
                { level = 1,  move = "SCRATCH"      },
                { level = 11, move = "BITE"         },
                { level = 20, move = "PAY_DAY"      },
                { level = 28, move = "FAINT_ATTACK" },
                { level = 35, move = "SCREECH"      },
                { level = 41, move = "FURY_SWIPES"  },
                { level = 46, move = "SLASH"        },
            },
            tmhm = {
                "HEADBUTT",     "CURSE",        "TOXIC",        "ZAP_CANNON",   "PSYCH_UP",
                "HIDDEN_POWER", "SUNNY_DAY",    "SNORE",        "ICY_WIND",     "PROTECT",
                "ENDURE",       "FRUSTRATION",  "IRON_TAIL",    "THUNDER",      "RETURN",
                "SHADOW_BALL",  "MUD_SLAP",     "DOUBLE_TEAM",  "SWAGGER",      "SLEEP_TALK",
                "SWIFT",        "DEFENSE_CURL", "DREAM_EATER",  "DETECT",       "REST",
                "ATTRACT",      "THIEF",        "NIGHTMARE",
            },
            evolutions = {
                { into = "MEOWTH", method = "EVOLVE_HAPPINESS", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "AMNESIA", "CHARM", "HYPNOSIS", "SPITE",
            },
            eggSteps = 20,
            genderRatio = 127, -- 50/50 : male/female
            spriteFront = mod.assets:path("assets/battle/coinpur/CoinpurF.png"),
            spriteBack = mod.assets:path("assets/battle/coinpur/CoinpurB.png"),
            picSize = 5,
            cry = "MEOWTH",
            dexEntry = {
                kind = "SCRATCH CAT",
                heightFt    = 0,
                heightIn    = 52,
                weightLbs   = 4.65,
                text    = "It will steal<NEXT>anything shiny and<NEXT>try to hide it in",
                text2   = "a nearby den.",
            },
            palette = {
                normal = {
                    { 255, 255, 41 },
                    { 255, 181, 99 },
                },
                shiny = {
                    { 255, 181, 99 },
                    { 196, 72, 214 },
                },
            },
            iconFallback = "MEOWTH",
            paletteFallback = "MEOWTH",
        },
    }
end