var Menu = require('terminal-menu')

var menu = Menu({ width: 29, x: 4, y: 2 })

menu.reset()
menu.write('Time Logging\n')
menu.write('-------------------------\n')

menu.add('START')
menu.add('PAUSE')
menu.add('STOP')

menu.on('select', function (label) {

});

process.stdin.pipe(menu.createStream()).pipe(process.stdout)
process.stdin.setRawMode(true)

menu.on('close', function () {
    process.stdin.setRawMode(false)
    process.stdin.end()
});
