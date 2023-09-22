// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    function Greater(uint[] memory numbers) external pure returns(uint) {
        uint gr = 0;
        for(uint i = 0; i < numbers.length; i++)
        {
            if(numbers[i] > gr)
            {
                gr = numbers[i];
            }
        }
        return gr;
    }
}
