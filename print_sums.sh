#!/bin/bash
cat $1 | grep "^STOP" | cut -d'|' -f4
