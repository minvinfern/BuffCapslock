#Requires AutoHotkey v2.0

CapsLock::
{
    ClipboardBackup := ClipboardAll
    A_Clipboard := ""
    Send '^c'
    Sleep 10

    if A_Clipboard != "" {
        Send StrUpper(A_Clipboard)
        return

    } else {

        return
    }

}
