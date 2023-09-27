// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RightAngledTriangle {
    //To check if a triangle with side lenghts a,b,c is a right angled triangle
    function check(uint a, uint b, uint c) external pure returns (bool r) {
        uint asq = a*a;
        uint bs = b*b;
        uint cs = c*c;
       if (a <= 0 || b <= 0 || c <= 0) {
                return false;
                    }

        if (asq + bs == cs || asq + cs == bs || bs + cs == asq) {
                r = true;
            }
        else { r = false; }
    }
}
