
messages =
  explain: undefined
  html: "Checkout [here](https://github.com/fossasia?language=html) :tada::tada:"
  lua: "Checkout [here](https://github.com/fossasia?language=lua) :tada::tada:"
  css: "Checkout [here](https://github.com/fossasia?language=css) :tada::tada:"
  c: "Checkout [here](https://github.com/fossasia?language=c) :tada::tada:"
  java: "Checkout [here](https://github.com/fossasia?language=java) :tada::tada:"
  javascript: "Checkout [here](https://github.com/fossasia?language=javascript) :tada::tada:"
  php: "Checkout [here](https://github.com/fossasia?language=php) :tada::tada:"
  python: "Checkout [here](https://github.com/fossasia?language=python) :tada::tada:"
  kotlin: "Checkout [here](https://github.com/fossasia?language=kotlin) :tada::tada:"
  swift: "Checkout [here](https://github.com/fossasia?language=swift) :tada::tada:"
  typescript: "Checkout [here](https://github.com/fossasia?language=typescript) :tada::tada:"
  shell: "Checkout [here](https://github.com/fossasia?language=shell) :tada::tada:"
  famous: "use the pinned repos and format this text to bullet all the repos"

module.exports = (robot) ->
  robot.hear /fossbot suggest (\w*)\s?(?:$|to @?([^\s]+))/i, (msg) ->
   response = messages[msg.match[1].toLowerCase()]
   user = msg.message.user.login
   if !response
    msg.send "I would recommend to narrow down your searches to::wink:\n\n" + "**html, lua, css, c, java, javascript, php, python, kotlin, swift, typescript, shell**"
   msg.emote response
