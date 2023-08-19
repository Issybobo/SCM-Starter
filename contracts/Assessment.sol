// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Assessment {
    address payable public owner;
    uint256 public balance;

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
    }

    function getBalance() public view returns(uint256){
        return balance;
    }

    function deposit(uint256 _amount) public payable {
        uint _previousBalance = balance;

        require(msg.sender == owner, "You are not the owner of this account");

        balance += _amount;
        assert(balance == _previousBalance + _amount);

        emit Deposit(_amount);
    }

    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function withdraw(uint256 _withdrawAmount) public {
        require(msg.sender == owner, "You are not the owner of this account");
        uint _previousBalance = balance;
        if (balance < _withdrawAmount) {
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: _withdrawAmount
            });
        }

        balance -= _withdrawAmount;
        assert(balance == (_previousBalance - _withdrawAmount));

        emit Withdraw(_withdrawAmount);
    }

    function transfer(address _to, uint256 _value) public {
        require(_to != address(0), "Invalid recipient address");
        require(_value > 0, "Value must be greater than zero");
        require(balance >= _value, "Insufficient balance");

        balance -= _value;
        emit Transfer(msg.sender, _to, _value);
    }

    function transferOwnership(address _newOwner) public {
        require(msg.sender == owner, "You are not the owner of this account");
        require(_newOwner != address(0), "Invalid new owner address");
        
        address previousOwner = owner;
        owner = payable(_newOwner);

        emit OwnershipTransferred(previousOwner, _newOwner);
    }
}
