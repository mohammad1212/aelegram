redis = (loadfile "redis.lua")()
io.write("Enter aelegram ID : ")
local last = io.read()
io.popen('rm -rf ~/.telegram-cli/aelegram-'..last..' aelegram-'..last..'.lua aelegram-'..last..'.sh aelegram_'..last..'_logs.txt')
redis:del('aelegram:'..last..':*')
print("Done!\nAll Data/Files Of aelegram Deleted\naelegram ID : "..last)
