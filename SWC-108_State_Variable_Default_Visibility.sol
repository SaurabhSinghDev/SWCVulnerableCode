// Author: Saurabh Singh
pragma solidity 0.4.24;
contract VulnerableContract {
    // State variables without explicit visibility
    uint internalFunds; // Should be private, but defaults to internal
    mapping(address => uint) userBalances; // Should be private, but defaults to internal

    constructor() public {
        internalFunds = 1000; // Initial internal funds
    }

    // Public function to deposit funds
    function deposit() public payable {
        require(msg.value > 0, "Deposit value must be greater than 0");
        userBalances[msg.sender] += msg.value;
    }

    // Public function to withdraw funds
    function withdraw(uint amount) public {
        require(userBalances[msg.sender] >= amount, "Insufficient balance");
        userBalances[msg.sender] -= amount;
        msg.sender.transfer(amount);
    }

    // Function to check internal funds - should be restricted
    function checkInternalFunds() public view returns (uint) {
        return internalFunds;
    }

    // A derived contract might access and manipulate internalFunds
    // which should only be accessible within this contract.
}

// A derived contract could exploit the default visibility
contract ExploitContract is VulnerableContract {
    function stealInternalFunds() public {
        internalFunds -= 100; // Decreasing the internal funds
    }
}
