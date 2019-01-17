import httpclient, json, strutils, parseopt

proc getOrg(mac: string): string =
    var client = httpclient.newHttpClient()
    let response = client.request("https://services13.ieee.org/RST/standards-ra-web/rest/assignments/?registry=MAC&text=" & mac & "&sortby=organization&size=10", httpMethod = httpclient.HttpGet)
    client.close()
    return to(json.parseJson(response.body)["data"]["hits"][0]["organizationName"], string)

for kind, key, value in parseopt.getOpt():
    if kind == parseopt.CmdLineKind.cmdArgument:
        echo getOrg(substr(strutils.replace(key, "-", ""), 0, 5))


