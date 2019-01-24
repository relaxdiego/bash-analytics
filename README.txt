Bash Analytics
==============

Just a simple bash script that allows you to do some simple analysis on
an Apache access log.


Requirements
------------

* Bash
* Docker CE/EE
* Make


Usage
-----

List the top 3 requests grouped by path and HTTP code

```
script/ba --logfile samples/access_log --group path,code --top 3
```

List the top 5 requests grouped by path and HTTP code with HTTP code == 40x

```
script/ba --logfile samples/access_log --group path,code --top 3 --filter code=40.
```

List the top 5 requests grouped by client between 6 and 7PM with HTTP code 40x

```
script/ba --logfile samples/access_log --group path,code --top 5 --filter timestamp=07/Mar/2004:1[8-9],code=40.
```

Running The Tests
-----------------

This project comes with an automated test suite. To run it do the following:

```
script/test
```
