
messages =
  explain: undefined
  html: "a"
  lua: "a"
  css: "a"
  c: "a"
  java: "a"
  javascript: "Checkout https://github.com/fossasia?language=javascript :tada::tada:"
  php: "https://github.com/fossasia?language=php"
  python: "https://github.com/fossasia?language=python"
  kotlin: "a"
  swift: "a"
  typescript: "a"
  shell: "a"
  famous: "use the pinned repos and format this text to bullet all the repos"

module.exports = (robot) ->
  robot.hear /fossbot suggest (\w*)\s?(?:$|to @?([^\s]+))/i, (msg) ->
   response = messages[msg.match[1].toLowerCase()]
   user = msg.message.user.login
   if !response
    msg.send "I would recommend to narrow down your searches to::wink:\n\n" + "**html, lua, css, c, java, javascript, php, python, kotlin, swift, typescript, shell**"
   msg.emote response
