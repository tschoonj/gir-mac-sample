#!/bin/sh -e

# This environment variable is necessary on my envrironment. Why?
export ARCHFLAGS="-arch x86_64"

scanner_flags="$scanner_flags --warn-all"
scanner_flags="$scanner_flags --namespace=Sample"
scanner_flags="$scanner_flags --nsversion=1.0"
scanner_flags="$scanner_flags --libtool=glibtool"
scanner_flags="$scanner_flags --library=libsample.la"
scanner_flags="$scanner_flags --include=GObject-2.0"
scanner_flags="$scanner_flags --pkg-export=sample"
scanner_flags="$scanner_flags --output Sample-1.0.gir"

set -x
g-ir-scanner $scanner_flags greeter.c greeter.h libsample.la
g-ir-compiler $compiler_flags -o Sample-1.0.typelib Sample-1.0.gir
