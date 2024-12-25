tell application "WeChat"
    activate
end tell

delay 1

tell application "System Events"
    tell process "WeChat"
        set frontmost to true
        set targetName to value of static text 1 of group 1 of scroll area 1 of splitter group 1 of window 1
    end tell
end tell

return targetName
