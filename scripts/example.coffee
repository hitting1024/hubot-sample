CronJob = require('cron').CronJob

module.exports = (robot) ->
  robot.respond /hoge/i, (msg) ->
    msg.send "fuga"

  cron = new CronJob('00 * * * * *', () =>
    envelope = room: "#test"
    robot.send envelope, "cron"
  )
  cron.start()
