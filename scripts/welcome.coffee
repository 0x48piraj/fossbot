module.exports = (robot) ->
  robot.hear /(.*)I(.*)new(.*)(community|fossasia|organisation)(.*)/i, (msg) ->
    user = msg.message.user.login
    msg.emote "Welcome @#{user}! :tada:\n\nTo get started, please read our [Best Practices at fossasia](https://blog.fossasia.org/open-source-developer-guide-and-best-practices-at-fossasia/). Most issues will be explained there, - it will save you a lot of time, just read it. *Really.*\n\n*For exploring various projects of FOSSASIA*\nClick [here](https://github.com/fossasia):)"
