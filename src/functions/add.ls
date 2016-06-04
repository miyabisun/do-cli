require! <[moment]>

module.exports = ({log, database}, name)-->
  now = moment!.format \X
  err, id <- database.db.run """
    INSERT INTO do(name, created, modified)
    VALUES($name, $created, $modified)
  """, {$name: name, $created: now, $modified: now}
  log.output "[Added] #{@lastID}: #name"

