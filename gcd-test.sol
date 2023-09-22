// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract GCDTest {

    //this function calculates the GCD (Greatest Common Divisor)
    function gcd(uint a, uint b) external pure returns (uint t) {
        while(b!=0)
        {
            uint r = a%b;
            a=b;
            b=r;
        }
        t=a;
        
    }

}
