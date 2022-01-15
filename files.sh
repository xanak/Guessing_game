#!/bin/bash

VARIABLE=$(($RANDOM%20))

eval touch file-{1..$VARIABLE}.txt
