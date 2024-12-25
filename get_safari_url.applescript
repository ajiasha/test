tell application "Safari"
    set currentTab to current tab of front window
    set tabURL to URL of currentTab
    return tabURL
end tell
