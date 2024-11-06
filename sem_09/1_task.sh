#!/bin/bash

grep -o $2 $1 | wc -l
