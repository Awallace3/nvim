local function GetFileExtension(url)
  return url:match("^.+(%..+)$")
end

-- local filename = function()
--  local str = debug.getinfo(2, "S").source:sub(2)
--  local file_name = str:match("^.*/(.*)") or str
--  local ext = GetFileExtension(file_name)
--  return file_name, ext
-- end
function Test()
  print('hello')
end

function File_type(file)
  local ext = GetFileExtension(file)
  print(ext)
  if ext == '.py' then
    return 'python3'
  elseif ext == '.lua' then
    return 'lua'
  else
    return 'not_supported_ext'
  end
end
-- print(filename());
-- f_name, ext = filename()
-- print(file_type(f_name))
