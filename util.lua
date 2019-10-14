-- combine two path 
function getPathAbsolute(path1, path2)
    return hs.fs.pathToAbsolute(string.format("%s/%s",path1,path2))
end
--get user home dir file
function getUserFilePathhAbsolute(path)
    return hs.fs.pathToAbsolute(string.format("%s/%s",os.getenv('HOME'),path))
end
-- a filter that returns true if the given file should be ignored
function ignored(file)
  if file == nil then return true end
  local _, filename, _ = splitPath(file)
  -- ignore dotfiles
  if filename:match('^%.') then return true end
  return false
end
-- Return true if the file exists, else false
function exists(name)
  local f = io.open(name,'r')
  if f ~= nil then
    io.close(f)
    return true
  else
    return false
  end
end

-- Splits a string by '/', returning the parent dir, filename (with extension),
-- and the extension alone.
function splitPath(file)
  local parent = file:match('(.+)/[^/]+$')
  if parent == nil then parent = '.' end
  local filename = file:match('/([^/]+)$')
  if filename == nil then filename = file end
  local ext = filename:match('%.([^.]+)$')
  return parent, filename, ext
end
