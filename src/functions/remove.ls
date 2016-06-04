require! <[moment]>

module.exports = ({log, database}, id)-->
  err, target <- database.db.get """
    SELECT *
    FROM do
    WHERE id = $id
  """, {$id: id}
  unless target => log.output "[Remove] #id: not found task."; return
  err, id <- database.db.run """
    DELETE FROM do
    WHERE id = $id
  """, {$id: id}
  log.output "[Remove] #{target.id}: #{target.name} (#{target.created |> moment.unix >> (.format "YYYY-MM-DD HH:mm:ss")})"

