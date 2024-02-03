// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CryptoTrader {
    function roundTrip(int[] memory walletBalances, int[] memory networkFees) public pure returns (int) {
        uint n = walletBalances.length;
        int startBalance = 0;
        int totalDeficit = 0;
        uint startIndex = 0;
        for (uint i = 0; i < n; ++i) {
            startBalance += walletBalances[i] - networkFees[i]; 
            if (startBalance < 0) {
                totalDeficit += startBalance; 
                startIndex = i + 1; 
                startBalance = 0; 
            }
        }
        return (startBalance + totalDeficit >= 0) ? int(startIndex) : -1;
    }
}
