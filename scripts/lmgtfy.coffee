# Description:
#   Allows hubot to Google something for the user
# Commands:
#   hubot lmgtfy <term> - Searches google for you!


module.exports = (robot) ->
  robot.respond /lmgtfy\s?(.*)?$/i, (msg) ->
    if typeof msg.match[1] is 'string'
      link = " Click [this](http://lmgtfy.com/?q=" + msg.match[1] + ")."
    else
      link = ""
    msg.send "Hey! You seem to have asked a question which could have been solved by other means easily." + link + " When you ask a question, be sure to try out a few things first - you're in a much better position to help yourself then we are. Try googling, thinking, the GitHub search or git grep if you are looking for source code. [StackOverflow](http://stackoverflow.com/help/how-to-ask) has a good guide on how to ask questions in a way that allows us to help you even faster!"
