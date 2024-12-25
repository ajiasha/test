tell application "Finder"
    try
        set theFile to file "/Users/aiden/Desktop/testdlp.txt"
        set fileInfo to info for theFile
        if application fileInfo is "Google Chrome" then
            -- 如果是Chrome在尝试打开，进行阻止操作，这里简单地显示一个提示框替代实际的阻止逻辑，你可能需要更深入的系统级操作来真正阻止（比如通过权限调整等复杂手段）
            display dialog "禁止使用Chrome打开此文件" buttons {"OK"} default button 1 with icon caution
        end if
    on error
        -- 处理文件不存在等错误情况
        display dialog "指定文件不存在或出现其他错误" buttons {"OK"} default button 1 with icon stop
    end try
end tell
