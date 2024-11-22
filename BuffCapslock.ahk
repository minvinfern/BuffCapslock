#Requires AutoHotkey v2.0

CapsLock::
{
    ClipboardBackup := ClipboardAll
    A_Clipboard := ""
    Send '^c'
    Sleep 10
    selected_string := A_Clipboard
    if A_Clipboard != "" {
        Send StrUpper(A_Clipboard)
        ReselectText(selected_string)
        return

    } else {
        return
    }

}

ReselectText(string) {
    clipboard_length := StrLen(string)
    loop clipboard_length {
        Send '+{Left}'
    }

}
