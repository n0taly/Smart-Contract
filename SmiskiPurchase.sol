// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmiskiPurchase {
    uint public smiskiPrice;
    uint public smiskiStock;

    constructor(uint _initialPrice, uint _initialStock)  {
        smiskiPrice = _initialPrice;
        smiskiStock = _initialStock;
    }

    function buySmiski(uint _quantity) external payable {
        // Ensure there is enough stock available
        require(_quantity <= smiskiStock, "Not enough Smiskis in stock");

        // Calculate the total price
        uint totalPrice = smiskiPrice * _quantity;

        // Ensure the buyer sends the correct amount
        assert(msg.value >= totalPrice);

        // Update the stock
        smiskiStock -= _quantity;
    }

    function setPrice(uint _newPrice) external {
        // Ensure the new price is not below 600
        if (_newPrice < 600) {
            revert("Price cannot be below 600");
        }

        // Update the price
        smiskiPrice = _newPrice;
    }
}