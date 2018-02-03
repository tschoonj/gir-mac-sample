#!/bin/sh -ex

gcc -Wall -fPIC -c `pkg-config --cflags gobject-2.0` greeter.c
gcc -dynamiclib -install_name /usr/local/lib/libsample.dylib -o libsample.dylib greeter.o `pkg-config --libs gobject-2.0`
