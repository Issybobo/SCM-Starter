# MetaCrafters ATM
This project consists of a smart contract written in Solidity and a React frontend that interacts with the Ethereum blockchain using the MetaMask wallet. The smart contract allows users to manage their account balance, deposit and withdraw funds, transfer tokens to other addresses, and transfer ownership of the contract.

## Smart Contract
The smart contract, named Assessment.sol, is written in Solidity. It provides the following functionalities:

Deposit and Withdraw: Users can deposit and withdraw funds from their account balance.
Transfer Tokens: Users can transfer tokens from their account to another address.
Transfer Ownership: The contract owner can transfer ownership of the contract to another address.

## Deployment
The contract is deployed using the specified initial balance. The contract address will be needed to interact with the contract.

## Contract Events
The contract emits several events:

Deposit: Triggered when a deposit is made to the account balance.
Withdraw: Triggered when a withdrawal is made from the account balance.
Transfer: Triggered when tokens are transferred from one address to another.
OwnershipTransferred: Triggered when ownership of the contract is transferred to a new address.
Frontend
The frontend is built using React and interacts with the Ethereum blockchain through the MetaMask wallet. It provides a user interface for connecting the wallet, checking the account balance, making deposits and withdrawals, and transferring tokens.

## Installation and Usage
Clone this repository to your local machine.
Install the necessary dependencies by running npm install in both the root directory and the frontend directory.
Deploy the smart contract to the Ethereum network of your choice using tools like Hardhat or Remix.
Update the contractAddress in frontend/src/pages/index.js to match the deployed contract address.
Start the frontend by running npm start in the frontend directory.
Connecting MetaMask
To use the application, make sure you have the MetaMask wallet extension installed in your browser. Connect your MetaMask wallet to the application by clicking the "Connect Your MetaMask Wallet" button.

## Interacting with the Contract
Once connected, you can perform the following actions:

View your account balance.
Deposit and withdraw funds from your account balance.
Transfer a specified amount of tokens to another address.
Transfer ownership of the contract to a new address.