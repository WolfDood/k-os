os.loadAPI("functions")
functions.cs()
functions.setp(1, 1)
local FileList = fs.list("")
local i = 1
repeat
  functions.cs()
  functions.setp(1, 1)
  print("K-OS BETA 1.4 CL-EDITION")
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
  elseif comin == "help.exe" then
    print("Try some of these.")
    for _, file in ipairs(FileList) do
      print(file)
    end
    print("If they don't work then try adding .exe at the end")
    while true do
      print("Press E to Exit.")
      local event, key = os.pullEvent("key")
      if key == keys.e then
        break
      end
    end
    os.sleep(1)
  elseif comin == "whatsnew.exe" then
    print("What's new in 1.4: \n*Added minor changes to installation. \n*Added credits.exe  \n*Adding function to downgrade OS in the future.")
    while true do
      print("Press E to Exit.")
      local event, key = os.pullEvent("key")
      if key == keys.e then
        break
      end
    end
    os.sleep(1)
  elseif comin == "credits.exe" then
    print("Credits: \nOS Creator: Kaution2000 \nAdvCalc & Calc are not mine. \nRights reserved to owners of programs I may haved\nused.")
    os.sleep(5)
  elseif comin == "system.exe" then
    shell.run("KOSverifysystem")
    os.sleep(2.6)
  else print("Couldn't process request. E1")
  os.sleep(0.8)
  functions.cs()
  functions.setp(1, 1)
  os.sleep(2)
end
until i == 2
