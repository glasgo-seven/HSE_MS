#!/bin/bash

eval $1 &

echo $1 PID: $!

wait $!
