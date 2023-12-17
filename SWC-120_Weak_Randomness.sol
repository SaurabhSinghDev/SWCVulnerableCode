// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            function weakRandom() public view returns (uint) {
                // Weak randomness can be exploited
                return uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty)));
            }
        }