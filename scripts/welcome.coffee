module.exports = (robot) ->
  usr = msg.message.user.login
   robot.hear /I(.*)new(.*)community(.*)/i, (res) ->
     res.emote "Welcome @#{user}! :tada:\n\nTo get started, please read our [Best Practices at fossasia](https://blog.fossasia.org/open-source-developer-guide-and-best-practices-at-fossasia/). Most issues will be explained there, - it will save you a lot of time, just read it. *Really.*\n\n*Do not take an issue if you don't understand it on your own.* Especially if you are new you have to be aware that getting started with an open source community is not trivial: you will have to work hard and most likely become a better coder than you are now just as we all did.\n\nDon't get us wrong: we are *very* glad to have you with us on this journey into open source! We will also be there for you at all times to help you with actual problems. :)"
