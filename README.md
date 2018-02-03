# GObject Introspection Sample on macOS

## With Libtool

```
$ ./lt-01-build-dylib.sh
$ ./lt-02-build-gir.sh
```

=> OK

## Without Libtool

```
$ ./00-cleanup.sh
$ ./nolt-01-build-dylib.sh
$ ./nolt-02-build-gir.sh
```

=> Fail