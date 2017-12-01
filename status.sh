#!/bin/sh
tail -n 1 current.log | cut -d'|' -f1
