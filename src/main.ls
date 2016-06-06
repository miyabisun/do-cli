require! <[moment]>
global <<< require \prelude-ls
require! <[
  ./classes/log.ls
  ./functions/database.ls
  ./functions/remove-all.ls
]>
add = {log, database} |> require \./functions/add.ls
list = {log, database} |> require \./functions/list.ls
remove = {log, database} |> require \./functions/remove.ls
rename = {log, database} |> require \./functions/rename.ls

program = require \commander
program
  .version \1.0.0
  .usage "[options] [things ...]"
  .option "-a, --all", "Output allday's things."
  .option "-y, --yesterday", "Output yesterday's things."
  .option "-d, --delete [id ...]", "Delete things."
  .option "-r, --rename <id> <name>", "Rename things."
  .option "--remove-all", "Remove do-file at home directory."
  .parse process.argv

if program.remove-all then remove-all!
<- database.migrate

switch
| program.delete =>
  switch
  | program.yesterday =>
    end = moment!.subtract(-1, \days).end-of \day .format \X
    err, targets <- database.db.all """
      SELECT *
      FROM do
      WHERE created < $end
    """, {$end: end}
    targets |> each remove
  | program.delete isnt true =>
    program.delete |> remove
    program.args |> each remove
| program.rename =>
  id = program.rename
  name = program.args |> head
  rename id, name
| program.args.length =>
  program.args |> each add
| program.yesterday =>
  start = moment!.subtract(1, \days).start-of \day .format \X
  end = moment!.subtract(1, \days).end-of \day .format \X
  list start, end
| _ =>
  start = moment!.start-of \day .format \X
  end = moment!.end-of \day .format \X
  list start, end

