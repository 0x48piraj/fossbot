module.exports = (robot) ->
   robot.hear /(.*)(what|who|are|bot)(.*)(you|are)(.*)(you|bot)(.*)/i,  (msg) ->
    user = msg.message.user.login
    msg.send "Thanks for asking @#{user}, add a cool message"
