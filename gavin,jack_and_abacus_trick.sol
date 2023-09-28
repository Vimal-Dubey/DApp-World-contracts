// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Abacus  {
    int sum = 0;
     function addInteger(int n) public {
        sum += n;
     }

    function sumOfIntegers() public view returns(int){
        
        return sum;
    }

}
