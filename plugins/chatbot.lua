rehackerboots Update chatbot.lua
3 contributors @mehdizarehackerboots @Shayan123456 @shkan
RawBlameHistory    129 lines (127 sloc)  2.36 KB
--shared by @blackhatchannel
local function run(msg)
if msg.text == "hi" then
	return "Hello bb"
end
if msg.text == "Hi" then
	return "Hello honey"
end
if msg.text == "مهدی" then
        return "😄با بابام چی کار داری😉"
end
if msg.text == "mehdi" then
        return "ba babam chi kar dari"
end
if msg.text == "کینگ بوت" tehn
        return "بله" 
end
if msg.text == "Hello" then
	return "Hi bb"
end
if msg.text == "hello" then
	return "Hi honey"
end
if msg.text == "Salam" then
	return "Salam aleykom"
end
if msg.text == "salam" then
	return "va aleykol asalam"
end
if msg.text == "blackhat" then
	return "my love blackhat"
end
if msg.text == "mehdi" then
	return "My developer"
end
if msg.text == "shayan" then
	return "My member"
end
if msg.text == "zebehe" then
	return "my love Boobs"
end
if msg.text == "ashkan" then
	return "my love Dick"
end
if msg.text == "Blackhat" then
	return "my father blackhat"
end
if msg.text == "BLACKHAT" then
	return "Kheily Radifeh"
end
if msg.text == "Security" then
	return "Yes?"
end
if msg.text == "security" then
	return "What?"
end
if msg.text == "begoo chera" then
	return "chera?"
end
if msg.text == "bot" then
	return "hum?"
end
if msg.text == "ooff" then
	return "Offffff?"
end
if msg.text == "Nice" then
	return "Nice?"
end
if msg.text == "sudoe man kie kie?" then
	return "mehdi"
end
if msg.text == "kire??" then
	return "KHAAAAR"
end
if msg.text == "Bot" then
	return "Huuuum?"
end
if msg.text == "?" then
	return "Hum??"
end
if msg.text == "خوبی" then
        return "مرسی" then
end
if msg.text == "Bye" then
	return "Babay"
end
if msg.text == "سلام" then
        return "سلام" then
end
if msg.text == "bye" then
	return "boro bay"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^[Hh]i$",
		"^[Hh]ello$",
		"^[Zz]ebehe$",
		"^[Aa]shkan$",
		"^[Mm]ehdi$",
		"^[Bb]lackhat$",
		"^BLACKHAT$",
		"^[Bb]ot$",
		"^[Ss]ecurity$",
		"^[Bb]ye$",
		"^[As]sabaniam$",
		"^[Bb]egoo chera$",
		"^[Oo]off$",
		"^Mehdi$",
		"^[Nn]ice$",
                "^س]لام]$",
                "^خ]وبی]$",
                "^ک]ینگ بوت]$",
		"^[Ss]udoe man kie kie?$",
		"^[Kk]ire??$",
		"^?$",
                "^[Mm]ehdi$",
                "^م]هدی]$",
		"^[Ss]alam$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
