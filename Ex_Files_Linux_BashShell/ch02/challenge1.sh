#!/bin/bash
function f {
    # typeset A
    # declare -i A
    local A
    A=1
    echo inside f, A = $A
}
A=2
echo before f, A = $A
f
echo after f, A = $A
