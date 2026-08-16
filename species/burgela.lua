local speciesId = "BURGELA"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "TANGELA" },
        definition = {
            id = speciesId,
            name = "BURGELA",
            types = { "GRASS", "GRASS" },
            baseStats = {
                hp              = 50,
                attack          = 40,
                defense         = 100,
                speed           = 40,
                specialAttack   = 80,
                specialDefense  = 35,
            },
            catchRate = 45,
            baseExp = 87,
            growthRate = "GROWTH_MEDIUM_FAST",
            levelMoves = {
                { level = 1,  move = "CONSTRICT"    },
                { level = 4,  move = "SLEEP_POWDER" },
                { level = 10, move = "ABSORB"       },
                { level = 13, move = "POISONPOWDER" },
                { level = 19, move = "VINE_WHIP"    },
                { level = 25, move = "BIND"         },
                { level = 31, move = "MEGA_DRAIN"   },
                { level = 34, move = "STUN_SPORE"   },
                { level = 40, move = "SLAM"         },
                { level = 46, move = "GROWTH"       },
            },
            tmhm = {
                "HEADBUTT",     "CURSE",        "TOXIC",        "PSYCH_UP",     "HIDDEN_POWER",
                "SUNNY_DAY",    "SWEET_SCENT",  "SNORE",        "HYPER_BEAM",   "PROTECT",
                "GIGA_DRAIN",   "ENDURE",       "FRUSTRATION",  "SOLARBEAM",    "RETURN",
                "DOUBLE_TEAM",  "SWAGGER",      "SLEEP_TALK",   "SLUDGE_BOMB",  "REST",
                "ATTRACT",      "THIEF",        "CUT",          "FLASH",
            },
            evolutions = {
                { into = "TANGELA", method = "EVOLVE_HAPPINESS", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "FLAIL", "CONFUSION", "MEGA_DRAIN", "REFLECT", "AMNESIA",
            },
            eggSteps = 20,
            genderRatio = 127, -- 50/50 : male/female
            spriteFront = mod.assets:path("assets/battle/burgela/BurgelaF.png"),
            spriteBack = mod.assets:path("assets/battle/burgela/BurgelaB.png"),
            picSize = 6,
            cry = "TANGELA",
            dexEntry = {
                kind = "VINE",
                heightFt    = 1,
                heightIn    = 1,
                weightLbs   = 24.06,
                text    = "It grows around<NEXT>coasts and swamps<NEXT>by using the salt",
                text2   = "for nutrients.",
            },
            palette = {
                normal = {
                    { 99, 255, 90 },
                    { 140, 49, 49 },
                },
                shiny = {
                    { 165, 230, 90 },
                    { 140, 49, 49 },
                },
            },
            iconFallback = "ODDISH",
            paletteFallback = "TANGELA"
        },
    }
end