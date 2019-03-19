pragma solidity ^0.5.0;

contract Bank {
    address public owner;
    uint balance;


    // Constructor is "payable" so it can receive the initial funding of 30, 
    // required to reward the first 3 clients
    constructor() public payable {
        require(msg.value == 1 wei);
        owner = msg.sender;
        }
        
    function deposit() public payable returns (uint) {
        balance += msg.value;
        return balance;
    }

    function withdraw(uint withdrawAmount) public returns (uint remainingBal) {
        // Check enough balance available, otherwise just return balance
        if (withdrawAmount <= balance) {
            balance -= withdrawAmount;
            msg.sender.transfer(withdrawAmount);
        }
        return balance;
    }

}