Overview
The SmiskiPurchase smart contract allows users to purchase Smiskis at a set price. The contract manages the stock and price of Smiskis and ensures that transactions are correctly handled.

Features
Purchase Smiskis:
Users can buy Smiskis by sending the required amount of Ether.
Set Price: The contract owner can update the price of Smiskis, ensuring it does not fall below a minimum value.

Contract Details
Constructor
Parameters:
Initial price per Smiski (in wei).
Initial stock of Smiskis.

Public Variables
smiskiPrice: The current price of one Smiski.
smiskiStock: The number of Smiskis available in stock.

Functions
buySmiski
Description: Allows users to purchase a specified quantity of Smiskis.
Parameters:
Quantity: The number of Smiskis to purchase.
Requirements:
There must be enough Smiskis in stock.
The user must send enough Ether to cover the total price.
Logic:
Checks if the requested quantity is available in stock.
Calculates the total price based on the current price per Smiski.
Ensures the sent Ether covers the total price.
Updates the stock accordingly.

setPrice
Description: Allows the owner to set a new price for Smiskis.
Parameters:
New price per Smiski (in wei).
Requirements:
The new price cannot be below 600 wei.
Logic:
Checks if the new price is at least 600 wei.
Updates the price.

Requirements
Solidity ^0.8.0
An Ethereum wallet and sufficient test Ether to deploy and interact with the contract

Interaction
You can interact with the contract using Truffle console or through a front-end application. Ensure you have the contract address and ABI to facilitate interactions.

Example
Buying Smiskis:

Get the deployed contract instance.
Determine the quantity of Smiskis to purchase and calculate the total price.
Execute the purchase by sending the required Ether amount.
Setting a New Price:

Determine the new price.
Update the price through the contract.



