local function run(msg, matches,success)
local about = matches[2]
local chat = 'channel#id'..msg.to.id
        if msg.to.type == 'channel' and matches[1] == 'setabout' then
        local about = matches[2]
        channel_set_about(chat, about, ok_cb, false)
        return '♠Description has been seted♠'
    end
end
  return {
    patterns = {
      "^[!/#](setdes) (.+)$",
    }, 
    run = run 
  }
