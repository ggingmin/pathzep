import Cocoa
import os

let logger = Logger(subsystem: "com.pathzep.app", category: "main")

logger.warning("PATHZEP: main.swift starting")
fputs("PATHZEP STDERR: main.swift starting\n", stderr)

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate

logger.warning("PATHZEP: delegate set, calling app.run()")
fputs("PATHZEP STDERR: calling app.run()\n", stderr)

app.run()
