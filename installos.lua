print("K-OS Installer Wizard.")
os.sleep(1)
print("Please note: Advanced Computers are nessesary as they have requiremnets needed.")
print("Detecting System Files...")
shell.run("disk/KOSverifysystem")
os.sleep(3.4)
if fs.exists("KOSverifysystem") then
  print("Another version of K-OS detected. \nReplacing files for update...")
print("Installing Functions... Please Wait...")
if fs.exists("functions") then
  fs.delete("functions")
else end
fs.copy("disk/functions", "functions")
os.sleep(1.5)
print("Copying OS Files... Please Wait...")
if fs.exists("tempos") then
  os.sleep(1.4)
  print("Older version detected. Upgrading... Please Wait...")
  fs.delete("tempos")
else end
fs.copy("disk/os", "tempos")
os.sleep(5)
print("Installing Programs... Please Wait...")
if fs.exists("calc") then
  fs.delete("calc")
else end  
fs.copy("disk/calculator", "calc")
if fs.exists("advcalc") then
  fs.delete("advcalc")
else end
fs.copy("disk/advcalc", "advcalc")
os.sleep(1.2)
print("Merging directories... Please Wait...")
os.sleep(2)
print("Making these new files.")
local FileList = fs.list("")

for _, file in ipairs(FileList) do
  print(file)
end
os.sleep(1.9)
print("Making system verification patch... Please Wait...")
if fs.exists("KOSverifysystem") then
  fs.delete("KOSverifysystem")
else end
fs.copy("disk/KOSverifysystem", "KOSverifysystem")
os.sleep(10)
print("Making final Adjustments... Please Wait...")
if fs.exists("startup") then
  fs.delete("startup")
else end
fs.move("tempos", "startup")
fs.delete("tempos")
os.sleep(2)
print("Have fun with your new copy of K-OS")
os.sleep(2.2)
term.clear()
term.setCursorPos(1,1)
print("Booting in 3...")
os.sleep(1)
term.clear()
term.setCursorPos(1,1)
print("Booting in 2...")
os.sleep(1)
term.clear()
term.setCursorPos(1,1)
print("Booting in 1...")
os.sleep(1)
term.clear()
term.setCursorPos(1,1)
print("Booting...")
os.sleep(0.5)
os.reboot()
end
