// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract LCM {

    //this function calculates the LCM
    function lcm(uint a, uint b) public pure returns (uint ans) {
        
         assembly{
            let x:= mul(a,b)
            for{} gt(b,0){}{
                let t:= b
                b := mod(a,b)
                a := t
            }
            ans := div(x,a)
}
}
}     
