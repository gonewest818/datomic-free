#!/usr/bin/env bash

sed "/host=0.0.0.0/a alt-host=${ALT_HOST:-transactor}" -i transactor.properties

bin/transactor transactor.properties
