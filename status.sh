#!/bin/sh
tail -n 1 hours.log | cut -d'|' -f1
