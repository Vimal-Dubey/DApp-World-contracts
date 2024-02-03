// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/utils/Strings.sol";

contract ToBinary{

		function toBinary(uint256 n) public pure returns (string memory) {
		uint num;
        string memory buffer = "";
        while(n!=0){
            num = n%2;
            buffer = string.concat(Strings.toString(num), buffer);
            n = n/2;
        }

        return buffer;
		}

}
