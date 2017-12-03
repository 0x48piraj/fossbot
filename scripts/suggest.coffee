
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
  famous: "You can checkout these projects\n- [Open Event Webapp](https://github.com/fossasia/open-event-webapp)\n- [Susi Server](https://github.com/fossasia/susi-server)\n- [Yaydoc](https://github.com/fossasia/yaydoc)\n- [Susi Chat](https://github.com/fossasia/chat.susi.ai)\n- [Susi Android](https://github.com/fossasia/susi-android)\n- [Loklak Search](https://github.com/fossasia/loklak_search)\n\n*Hope you enjoy working on one of these!* :sparkles:"

domain =
  android: "Checkout [here](https://github.com/fossasia?language=java) :tada::tada:"
  web: "Checkout [here](https://github.com/fossasia?language=javascript) :tada::tada:"
  ios: "Checkout [here](https://github.com/fossasia?language=swift) :tada::tada:"

module.exports = (robot) ->
  robot.hear /fossbot suggest (\w*)\s?(?:$|to @?([^\s]+))/i, (msg) ->
   response = messages[msg.match[1].toLowerCase()]
   user = msg.message.user.login
   if !response
    msg.send "I would recommend to narrow down your searches to::wink:\n\n" + "**html, lua, css, c, java, javascript, php, python, kotlin, swift, typescript, shell**"
   msg.emote response
    
  robot.hear /fossbot suggest domain (\w*)\s?(?:$|to @?([^\s]+))/i, (msg) ->
   response = domain[msg.match[1].toLowerCase()]
   user = msg.message.user.login
   if !response
     msg.send "I would recommend to narrow down your searches to::wink:\n\n" + "**web, android, ios**"
   msg.emote response
