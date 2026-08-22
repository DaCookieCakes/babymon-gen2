local speciesId = "NIDORUNT"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "NIDORAN_M" },
        definition = {
            id = speciesId,
            name = "NIDORUNT",
            types = { "POISON", "POISON" },
            baseStats = {
                hp = 40,
                attack = 32,
                defense = 37,
                speed = 21,
                specialAttack = 30,
                specialDefense = 35,
            },
            catchRate = 235,
            baseExp = 55,
            growthRate = "GROWTH_MEDIUM_SLOW",
            levelMoves = {
                { level = 1,  move = "GROWL"        },
                { level = 1,  move = "TACKLE"       },
                { level = 8,  move = "SCRATCH"      },
                { level = 12, move = "DOUBLE_KICK"  },
                { level = 17, move = "POISON_STING" },
                { level = 23, move = "TAIL_WHIP"    },
                { level = 30, move = "BITE"         },
                { level = 38, move = "FURY_SWIPES"    },
            },
            tmhm = {
                "HEADBUTT",     "CURSE",        "TOXIC",        "HIDDEN_POWER", "SUNNY_DAY",
                "SNORE",        "BLIZZARD",     "PROTECT",      "RAIN_DANCE",   "ENDURE",
                "IRON_TAIL",    "THUNDER",      "RETURN",       "MUD_SLAP",     "DOUBLE_TEAM",
                "SWAGGER",      "SLEEP_TALK",   "DEFENSE_CURL", "DETECT",       "REST",
                "ATTRACT",      "THIEF",
            },
            evolutions = {
                { into = "NIDORAN_F", method = "HAPPINESS_FEMALE", time = "ANYTIME" },
                { into = "NIDORAN_M", method = "HAPPINESS_MALE", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "BEAT_UP",      "CHARM",        "COUNTER", "DISABLE", "FOCUS_ENERGY",
                "SUPERSONIC",   "TAKE_DOWN",
            },
            eggSteps = 20,
            genderRatio = 127, -- 50/50 : male/female
            spriteFront = mod.assets:path("assets/battle/nidorunt/NidoruntF.png"),
            spriteBack = mod.assets:path("assets/battle/nidorunt/NidoruntB.png"),
            picSize = 4,
            cry = "NIDORAN_F",
            dexEntry = {
                kind = "POISON PIN",
                heightFt = 0,
                heightIn = 52,
                weightLbs = 7.7,
                text = "Though small,<NEXT>it will fight<NEXT>vigorously with",
                text2 = "its siblings just<NEXT>to feed.",
            },
            palette = {
                normal = {
                    { 176, 148, 221 },
                    { 4,   94,  128 },
                },
                shiny = {
                    { 222, 140, 230 },
                    { 189, 33,  206 },
                },
            },
            iconFallback = "NIDORAN_M",
            paletteFallback = "NIDORAN_M"
        },
    }
end