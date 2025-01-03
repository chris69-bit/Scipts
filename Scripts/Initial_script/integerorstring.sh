#!/bin/bash

a=2334
let "a += 1"
echo "a = $a"


b=${a/23/BB}
echo "b = $b"
declare -i b
echo "b = $b"

let "b += 1"
echo "b = $b"
