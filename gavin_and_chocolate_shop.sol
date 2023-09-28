// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ChcolateShop  {

    //this function allows gavin to buy n chocolates
    uint noc=0;
    function buyChocolates(uint n) public {
       noc += n;
    }

    //this function allows gavin to sell n chocolates
    function sellChocolates(uint n) public {
       noc -= n;
    }

    //this function returns total number of chocolates in bag
    function chocolatesInBag() public view returns(uint n) {
        return noc;
    }


}
