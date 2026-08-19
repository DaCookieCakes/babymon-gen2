--
-- what:  Function to load different packaged lua files.
-- why:   Rather than having a multi-thousand line long main lua file,
--          we split them into multiple files in the mod "species" directory.
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
--        Also ensures that Expanded Species is installed.
--
return function(mod)
  local framework = assert(mod.find("expanded_species"), "BabyMon requires Expanded Species!")
  local expanded = assert(framework.exports.getApi(1))
  expanded = assert(expanded.requireCapabilities({ "safeDefaults", "customDex" }))

  local files = {
    "species/bipulla.lua",
    "species/burgela.lua",
    "species/coinpur.lua",
    "species/dodaerie.lua",
    "species/kolta.lua",
    "species/orfry.lua",
    "species/paraspor.lua",
    "species/pupperon.lua",
    "species/smujj.lua",
    "species/vulp3.lua",
  }

  -- We load all the pokemon files first, register cries, and collect definitions.
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
end