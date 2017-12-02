module.exports = (robot) ->
  
   robot.hear /I(.*)new(.*)community(.*)/i, (res) ->
     res.emote "Hello!"
