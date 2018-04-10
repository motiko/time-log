#!/bin/bash
date -j -f "%Y-%M-%d %H:%M" "$1" "+%s"
