# What is MAC address resolver

> MAC address resolver is a set of nim scripts which either use a csv or http api to resolve which organization an OUI resolves to.

----

## How does it work

> It works by parsing a MAC address, XX-XX-XX-XX-XX-XX, and extracting the OUI from it and then looking it up in either a supplied csv from [this link](http://standards-oui.ieee.org/oui/oui.csv) or by directly contacting the api for the information.

----

### Usage

> To use the either nim script, supply a commandline argument which has the MAC Address you'd like to lookup. To use the non-http version run: 
```
./macaddrResolvernHTTP 38-F9-D3-0A-1F-D3
```
> To use the http version run:
```
./macaddrResolverHTTP 38-F9-D3-0A-1F-D3
```

----

#### Changelog

* 13-Jan-2019 Added a detailed readme.
* 13-Jan-2019 Added core files.

----