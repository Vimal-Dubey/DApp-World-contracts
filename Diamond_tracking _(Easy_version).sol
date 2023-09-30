// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract DiamondLedger {

    //this function imports the diamonds
    mapping(uint => uint) private alld;
    function importDiamonds(uint[] memory weights) public {
        for(uint i=0; i<weights.length; i++){

            alld[weights[i]]++;
        }
    }

    //this function returns the total number of available diamonds as per the weight
    function availableDiamonds(uint weight) public view returns(uint) {
        return alld[weight];
    }

}
