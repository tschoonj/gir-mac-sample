#!/bin/sh -ex

glibtool --mode=compile --tag=CC cc -Wall -c `pkg-config --cflags gobject-2.0` greeter.c
glibtool --mode=link --tag=CC cc -o libsample.la greeter.lo -rpath /usr/local/lib `pkg-config --libs gobject-2.0`
