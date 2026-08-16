local speciesId = "VULPIII"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "VULPIX" },
        definition = {
            id = speciesId,
            name = "VULPIII",
            types = { "FIRE", "FIRE" },
            baseStats = {
                hp = 23,
                attack = 26,
                defense = 25,
                speed = 55,
                specialAttack = 40,
                specialDefense = 60,
            },
            catchRate = 190,
            baseExp = 60,
            growthRate = "GROWTH_MEDIUM_FAST",
            levelMoves = {
                { level = 1,  move = "EMBER"        },
                { level = 1,  move = "TAIL_WHIP"    },
                { level = 7,  move = "QUICK_ATTACK" },
                { level = 13, move = "ROAR"         },
                { level = 19, move = "CONFUSE_RAY"  },
                { level = 25, move = "SAFEGUARD"    },
                { level = 31, move = "FLAMETHROWER" },
                { level = 37, move = "FIRE_SPIN"    },
            },
            tmhm = {
                "HEADBUTT", "CURSE",        "TOXIC",    "HIDDEN_POWER", "SUNNY_DAY",
                "SNORE",    "PROTECT",      "ENDURE",   "IRON_TAIL",    "RETURN",
                "DIG",      "DOUBLE_TEAM",  "SWAGGER",  "SLEEP_TALK",   "FIRE_BLAST",
                "SWIFT",    "REST",         "ATTRACT",
            },
            evolutions = {
                { into = "VULPIX", method = "EVOLVE_HAPPINESS", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "DISABLE", "FAINT_ATTACK", "FLAIL", "HYPNOSIS", "SPITE",
            },
            eggSteps = 20,
            genderRatio = 191, -- 25/75 : male/female
            spriteFront = mod.assets:path("assets/battle/vulp3/Vulp3F.png"),
            spriteBack = mod.assets:path("assets/battle/vulp3/Vulp3B.png"),
            picSize = 5,
            cry = "VULPIX",
            dexEntry = {
                kind = "FOX",
                heightFt = 1,
                heightIn = 0,
                weightLbs = 10.9,
                text = "Its fire breath<NEXT>does not come in<NEXT>until its tail",
                text2 = "splitting begins.",
            },
            palette = {
                normal = {
                    { 255, 148, 74 },
                    { 189, 74, 82 },
                },
                shiny = {
                    { 255, 197, 8 },
                    { 181, 132, 8 },
                },
            },
            iconFallback = "VULPIX",
            paletteFallback = "VULPIX"
        },
    }
end