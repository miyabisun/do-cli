require! <[fs]>

module.exports = ->
  fs.unlink-sync "#{process.env.HOME}/.mutter"
  console.log "Removed all things."

