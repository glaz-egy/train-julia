using Discord

c = Client("NTA4MTM3NDEzMjMxNTA5NTE2.DsGFkA.2f6w-cht1wLkIRyk-ufWRAQbB24")

function  onCommand(c::Client, m::Discord.Message)
    reply(c, m, "hogehoge")
    
end

add_command!(c,"!hoge", onCommand)
open(c)
wait(c)