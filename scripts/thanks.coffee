module.exports = (robot) ->
   robot.hear /(.*)(thanks|thank you)(.*)fossbot(.*)/i,  (msg) ->
    user = msg.message.user.login
    msg.send "No problem, @0x48piraj & @ms10398 made me just to help, you! :wink: ...aand our community too :stuck_out_tongue:"
