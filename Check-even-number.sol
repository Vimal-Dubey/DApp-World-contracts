// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    function Checkeven(int256 number) external pure returns (bool) {
         return  (number&1 == 0);

    }
}
