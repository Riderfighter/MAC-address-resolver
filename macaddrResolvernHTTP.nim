import json, strutils, parseopt, parsecsv

proc getOrg(mac: string): string =
    var p: CsvParser
    p.open("oui.csv")
    p.readHeaderRow()
    while p.readRow():
        if p.rowEntry("Assignment") == mac:
            return p.rowEntry("Organization Name")
    return "Not a valid OUI"

for kind, key, value in parseopt.getOpt():
    if kind == parseopt.CmdLineKind.cmdArgument:
        echo getOrg(substr(strutils.replace(key, "-", ""), 0, 5))


