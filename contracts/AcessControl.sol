// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Ballot {
    address admin;

    function foo() external onlyAdmin {}

    // constructor - runs once when contract is deployed
    constructor() {
        admin = msg.sender;
    }

    // modifier to allow only admin to execute a function
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin..");
        _;
    }
}
