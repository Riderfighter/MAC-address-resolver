# What is MAC address resolver

> MAC address resolver is a set of nim scripts which either use a csv or http api to resolve which organization an OUI resolves to.

----

## How does it work

> It works by parsing a MAC address, XX-XX-XX-XX-XX-XX, and extracting the OUI from it and then looking it up in either a supplied csv from [this link](http://standards-oui.ieee.org/oui/oui.csv) or by directly contacting the api for the information.

----

### Changelog

* 13-Jan-2019 Added a detailed readme.
* 13-Jan-2019 Added core files.

----