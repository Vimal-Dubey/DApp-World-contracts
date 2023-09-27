// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TriangleInequality {
    //To check if a triangle is possible with lengths a,b and c
    function check(uint a, uint b, uint c) public pure returns (bool res) {
        assembly {
            res := and(and(gt(add(a, b), c), gt(add(b, c), a)), gt(add(c, b), a)) 
        }
    }
}
