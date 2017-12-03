
module.exports = (robot) ->
   robot.hear /(.*)(fossbot|who|creators)(.*)(behind|created)(.*)(you)(.*)/i,  (msg) ->
    user = msg.message.user.login
    msg.send "Thanks for asking @#{user}!\n\nI'm created by a kid named **Piyush Raj** A.K.A. @0x48piraj *([Github](https://github.com/0x48piraj) | [LinkedIn](https://www.linkedin.com/in/0x48piraj/) | [Twitter](https://twitter.com/0x48piraj))*"
