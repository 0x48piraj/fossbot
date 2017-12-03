module.exports = (robot) ->
  robot.hear /(.*)I(.*)new(.*)(community|fossasia|organisation)(.*)/i, (msg) ->
    user = msg.message.user.login
    msg.emote "Welcome @#{user}! :tada:\n\nTo get started, please read our [Best Practices at FOSSASIA](https://blog.fossasia.org/open-source-developer-guide-and-best-practices-at-fossasia/). Most issues will be explained there, - it will save you a lot of time, just read it.\n\n*For exploring various projects of FOSSASIA*\nClick [here](https://github.com/fossasia)\n To get any help you can always reach out to the specific project gitter channel!!\n Enjoy your FOSSASIA journey :sparkles:"
