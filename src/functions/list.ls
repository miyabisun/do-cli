require! <[moment]>
{group-by, obj-to-pairs} = require \prelude-ls

module.exports = ({log, database}, start, end)-->
  err, rows <- database.db.all """
    SELECT *
    FROM do
    WHERE created BETWEEN $start AND $end
    ORDER BY created ASC
  """, {$start: start, $end: end}
  output = ({id, name, created, modified}:row)->
    "  #id: #name (#{created |> moment.unix >> (.format \HH:mm:ss)})"
    |> log.output
  rows
  |> group-by (.created) >> (moment.unix) >> (.format "YYYY-MM-DD")
  |> obj-to-pairs
  |> each ([date, rows])->
    log.output "[date of #date]"
    rows |> each output

