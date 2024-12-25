-- 设置指定文件的默认应用程序为空
set filePath to "/Users/aiden/Desktop/testdlp.txt" -- 指定要禁止 Chrome 打开的文件路径

tell application "System Events"
    set defaultApp to path to application "Google Chrome" as text
    set fileType to "public.plain-text" -- 设置为文件的内容类型

    set docList to paragraphs of (do shell script "ls ~/Library/Preferences/com.apple.LaunchServices/com.apple.launchservices.secure.plist")
    repeat with doc in docList
        try
            set plistPath to "~" & doc
            do shell script "/usr/libexec/PlistBuddy -c 'Print :LSHandlers' " & plistPath
            if the result contains fileType then
                do shell script "/usr/libexec/PlistBuddy -c 'Delete :LSHandlers:" & fileType & "' " & plistPath
            end if
        end try
    end repeat
end tell
