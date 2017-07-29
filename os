os.loadAPI("functions")
functions.cs()
functions.setp(1, 1)
local FileList = fs.list("")
local i = 1
repeat
  functions.cs()
  functions.setp(1, 1)
  print("K-OS BETA CL-EDITION")
  write("> ")
  local comin = read()
  if comin == "cyan" then
    print("Access Granted, Admin!")
    i = 2
  elseif comin == "calc.exe" then
    functions.cs()
    functions.setp(1, 1)
    shell.run("calculator")
  elseif comin == "advcalc.exe" then
    functions.cs()
    functions.setp(1, 1)
    shell.run("advcalc")
  elseif comin == "help" or "help.exe" or "/help" then
    for _, file in ipairs(FileList) do
      print(file)
    end
  else print("Couldn't process request. E1")
  os.sleep(0.9)
  functions.cs()
  functions.setp(1, 1)
end
until i == 2
