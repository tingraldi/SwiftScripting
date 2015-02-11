
import Foundation

public func RunScript(script: String) {
    NSTask.launchedTaskWithLaunchPath("/usr/bin/osascript", arguments: ["-e", script])
}

public func NotifyUserWithMessage(message: String, #title: String) {
    var script = "display notification \"\(message)\" with title \"\(title)\""
    RunScript(script)
}