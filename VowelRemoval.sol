// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RemoveVowels {
    function isVowel(bytes1 char) public pure returns (bool) {
        return (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u' ||
                char == 'A' || char == 'E' || char == 'I' || char == 'O' || char == 'U');
    }

    function removeVowels(string memory _input) public pure returns (string memory) {
        bytes memory str = bytes(_input);
        uint length = str.length;
        uint count = 0;
        bytes memory res = new bytes(length);

        for (uint i = 0; i < length; i++) {
            bytes1 ch = str[i];
            if (!isVowel(ch)) {
                res[count] = ch;
                count++;
            }
        }

        bytes memory result = new bytes(count);
        for (uint j = 0; j < count; j++) {
            result[j] = res[j];
        }

        return string(result);
    }
}
