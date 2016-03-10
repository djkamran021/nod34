@Shayan123456 @m13790115 @Creedsteam
RawBlameHistory    98 lines (74 sloc)  2.19 KB
do

-- Recursive function
local function getRandomButts(attempt)
  attempt = attempt or 0
  attempt = attempt + 1

  local res,status = http.request("http://api.obutts.ru/noise/1")

  if status ~= 200 then return nil end
  local data = json:decode(res)[1]

  -- The OpenBoobs API sometimes returns an empty array
  if not data and attempt <= 3 then
    print('Cannot get that butts, trying another one...')
    return getRandomButts(attempt)
  end

  return 'http://media.obutts.ru/' .. data.preview
end

local function getRandomBoobs(attempt)
  attempt = attempt or 0
  attempt = attempt + 1

  local res,status = http.request("http://api.oboobs.ru/noise/1")

  if status ~= 200 then return nil end
  local data = json:decode(res)[1]

  -- The OpenBoobs API sometimes returns an empty array
  if not data and attempt < 10 then 
    print('Cannot get that boobs, trying another one...')
    return getRandomBoobs(attempt)
  end

  return 'http://media.oboobs.ru/' .. data.preview
end

local function getRandomfilms(attempt)
  attempt = attempt or 0
  attempt = attempt + 1

  local res,status = http.request("http://shayanpanapa.ir/1.html")

  if status ~= 200 then return nil end
  local data = json:decode(res)[1]

  -- The OpenBoobs API sometimes returns an empty array
  if not data and attempt <= 3 then
    print('Cannot get that butts, trying another one...')
    return getRandomfilms(attempt)
  end

  return 'http://shayanpanapa.ir/' .. data.preview
end


local function run(msg, matches)
  local url = nil
  
  if matches[1] == "ممه" then
    url = getRandomBoobs()
  end

  if matches[1] == "کون" then
    url = getRandomButts()
  end
  
    if matches[1] == "فیلم" then
    url = getRandomfilms()
  end

  if url ~= nil then
    local receiver = get_receiver(msg)
    send_photo_from_url(receiver, url)
  else
    return 'Error getting boobs/butts for you, please try again later.' 
  end
end

return {
  description = "Gets a random boobs or butts pic", 
  usage = {
    "ممه: Get a boobs NSFW image. ًں”‍",
    "کون: Get a butts NSFW image. ًں”‍",
    "فیلم: Get a butts NSFW image. ًں”‍"
  },
  patterns = {
    "^ممه$",
    "^کون$",
    "^فیلم$"
  }, 
  run = run 
}

end
