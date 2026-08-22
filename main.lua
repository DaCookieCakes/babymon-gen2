--
-- what:  Function to load different packaged lua files.
-- why:   Rather than having a multi-thousand line long main lua file,
--          we split them into multiple files in the mod "species" directory.
--
function loadPackFile(relative, mod)
  local source, readError = mod:read(relative)
  assert(source, readError or ("Could not read " .. relative))

  local compile = assert(loadstring or load, "No Lua compiler is available")
  local chunk, compileError = compile(source, "@" .. mod.path .. "/" .. relative)
  assert(chunk, compileError)

  local ok, result = pcall(chunk)
  assert(ok, result)
  return result
end

--
-- what:  Main mod function
-- why:   Registers each and every pokemon in a file list.
--          Also ensures that Expanded Species is installed.
--          Also also registers our one mod option.
--
return function(mod)
  -- First we check if we even have the library installed. 
  -- We also check the API, and its capabilities. 
  -- If any of it is wrong or missing, we toss an error.
  local framework = assert(mod.find("expanded_species"), "BabyMon requires Expanded Species!")
  local expanded = assert(framework.exports.getApi(1))
  expanded = assert(expanded.requireCapabilities({ "safeDefaults", "customDex" }))

  -- Now we register Pokemon. Starting with making a list of each NEW mon's lua file.
  -- Finally we register their cries and insert them into the library'sbles.
  local files = {
    "species/bipulla.lua",
    "species/burgela.lua",
    "species/coinpur.lua",
    "species/dodaerie.lua",
    "species/kolta.lua",
    "species/nidorunt.lua",
    "species/orfry.lua",
    "species/paraspor.lua",
    "species/pupperon.lua",
    "species/smujj.lua",
    "species/vulp3.lua",
  }

  local definitions = {}
  for _, relative in ipairs(files) do
    local build = loadPackFile(relative, mod)
    assert(type(build) == "function", relative .. " must return a function")

    local species = build(mod)
    mod.content.cries:register(species.speciesId, species.cry)
    table.insert(definitions, species.definition)
  end

  local ok, registeredOrErr = pcall(framework.exports.registerAll, mod, definitions)
  if not ok then
    mod.log:error("Species batch registration failed: %s", tostring(registeredOrErr))
    mod.log:error("Files in this batch, in order: %s", table.concat(files, ", "))
    error(registeredOrErr, 0)
  end


  -- Evolution hook!
  -- We added a "gender happiness" evolutions,
  --  aka check for gender, time, AND happiness.
  local Evolution = require("src.core.gen2.Evolution")

  local function genderGatedHappinessCheck(requiredGender)
    return function(entry, mon, ctx)
      if ((mon and mon.happiness) or 0) < Evolution.HAPPINESS_TO_EVOLVE then
        return false, "happiness"
      end
      if Evolution.holdsEverstone(mon) then return false, "everstone" end

      local trigger = entry.time or Evolution.ANYTIME
      if trigger == Evolution.NITE and not isNight(ctx.timeOfDay) then
        return false, "daytime"
      end
      if trigger == Evolution.MORNDAY and isNight(ctx.timeOfDay) then
        return false, "night"
      end

      if mon.gender ~= requiredGender then
        return false, "gender"
      end

      return true
    end
  end

  mod.content.evolution_methods:register("HAPPINESS_MALE", { check = genderGatedHappinessCheck("male") })
  mod.content.evolution_methods:register("HAPPINESS_FEMALE", { check = genderGatedHappinessCheck("female") })


  -- Mod option stuff!
  -- We only have one option but we do have to sync it on game load,
  --  save load/creation, and when the mod option changes.
  mod.options:define({
      {
          key = "renameVulp",
          type = "toggle",
          label = "RENAME VULP FAMILY",
          default = false,
      }
  })

  if mod.options:get("renameVulp") == true then
    local vulpFiles = {
      "species/ninetails.lua",
      "species/vulpix.lua",
    }
    
    for _, relative in ipairs(vulpFiles) do
      local build = loadPackFile(relative, mod)
      assert(type(build) == "function", relative .. " must return a function")
      build(mod)
    end
  end
end