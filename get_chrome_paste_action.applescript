set previousClipboard to ""

repeat
    set currentClipboard to the clipboard
    
    if currentClipboard is not equal to previousClipboard then
        set previousClipboard to currentClipboard
        
        tell application "Google Chrome"
            set tabList to every tab of window 1
            repeat with aTab in tabList
                set pasteContent to "Pasted content on Tab " & (id of aTab) & ": " & execute aTab javascript "navigator.clipboard.readText();"
                do shell script "echo " & quoted form of pasteContent
            end repeat
        end tell
    end if
    
    delay 1 -- 每隔1秒检查一次剪贴板
end repeat
