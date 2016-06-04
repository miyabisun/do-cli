require! <[fs]>

module.exports = ->
  fs.unlink-sync "#{process.env.HOME}/.do"
  console.log "Removed all things."

