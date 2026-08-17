-- # POKEMON ID # --
local speciesId = "ORFRY"

-- # REGISTRATION # --
return function(mod)
    return {
        speciesId = speciesId,
        cry = { base = "GOLDEEN" },
        definition = {
            id = speciesId,
            name = "ORFRY",
            types = { "WATER", "WATER" },
            baseStats = {
                hp              = 30,
                attack          = 52,
                defense         = 45,
                speed           = 43,
                specialAttack   = 25,
                specialDefense  = 45,
            },
            catchRate = 225,
            baseExp = 50,
            growthRate = "GROWTH_MEDIUM_FAST",
            levelMoves = {
                { level = 1,  move = "PECK"         },
                { level = 1,  move = "TAIL_WHIP"    },
                { level = 10, move = "SUPERSONIC"   },
                { level = 15, move = "HORN_ATTACK"  },
                { level = 24, move = "FLAIL"        },
                { level = 29, move = "FURY_ATTACK"  },
                { level = 38, move = "WATERFALL"    },
                { level = 43, move = "HORN_DRILL"   },
                { level = 52, move = "AGILITY"      },
            },
            tmhm = {
                -- TMs
                "CURSE",        "TOXIC",        "HIDDEN_POWER",     "SUNNY_DAY",    "SNORE",
                "PROTECT",      "ENDURE",       "FRUSTRATION",      "RETURN",       "MUD_SLAP",
                "DOUBLE_TEAM",  "SWAGGER",      "SLEEP_TALK",       "SWIFT",        "REST",
                "ATTRACT",      "THIEF",        "STEEL_WING",
                -- HMs
                "SURF",         "WATERFALL"
            },
            evolutions = {
                { into = "GOLDEEN", method = "EVOLVE_HAPPINESS", time = "ANYTIME" },
            },
            eggGroups = { "EGG_NONE", "EGG_NONE" },
            eggMoves = {
                "HAZE", "HYDRO_PUMP", "PSYBEAM",
            },
            eggSteps = 20,
            genderRatio = 127, -- 50/50 : male/female
            spriteFront = mod.assets:path("assets/battle/orfry/OrfryF.png"),
            spriteBack = mod.assets:path("assets/battle/orfry/OrfryB.png"),
            picSize = 5,
            cry = "GOLDEEN",
            dexEntry = {
                kind = "GOLDFISH",
                heightFt    = 2,
                heightIn    = 03,
                weightLbs   = 43.2,
                text    = "Born at the source<NEXT>of streams, they<NEXT>are strong",
                text2   = "swimmers from<NEXT>birth.",
            },
            palette = {
                normal = {
                    { 239, 156, 0   },
                    { 255, 82,  16  },
                },
                shiny = {
                    { 247, 185, 134 },
                    { 255, 99,  156 },
                },
            },
            iconFallback = "GOLDEEN",
            paletteFallback = "GOLDEEN",
        },
    }
end