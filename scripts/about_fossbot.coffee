module.exports = (robot) ->
   robot.hear /(.*)(what|who|are|bot)(.*)(you|are)(.*)(you|bot)(.*)/i,  (msg) ->
    user = msg.message.user.login
    msg.send "Thanks for asking @#{user}, Two developers noticed that in gitter there were always same common queries for which someone had to answer so they thought to automate this process and hence I was born A.K.A. **fossbot**.\nI am a **`bot`** & helps new developers to understand the **fossasia's workflow!**"
