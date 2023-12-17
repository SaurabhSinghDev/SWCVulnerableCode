// Author: Saurabh Singh

        pragma solidity ^0.8.0;

        contract Vulnerable {
            mapping(address => uint) private balances;

            function withdraw(uint _amount) public {
                if (balances[msg.sender] >= _amount) {
                    (bool success, ) = msg.sender.call{value: _amount}("");
                    require(success);
                    balances[msg.sender] -= _amount;
                }
            }
        }