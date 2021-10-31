pragma solidity 0.6.0;

contract SimpmeStorage {
    struct AccountDetails {
        string name;
        address myAddressAcc;
    }

    AccountDetails[] public listAccount;

    //Data Types
    uint256 number = 5;
    bool difficulty = false;
    string food = "My fav food is ......";
    int256 negativenNumber = -4;
    address myAddress = 0xc5b16116c5873c565983c9B1751bFd7809479F0F;

    //Functions
    //internal function - can only be called by other functions inside of the contract
    //public are part of the contract interface and can be either caleed internally or via messages
    //external functions can be called from another contracts]
    //private only visible for the contract they are defined in and not in the derived contracts

    function store(uint256 myNumber) public {
        number = myNumber;
    }

    //Keywords that do not do a transaction in a function (view, pure)
    //view - we are just reading from the blockhash (dont need a transaction)
    function retrieveNumber() public view returns (uint256) {
        return number;
    }

    function sumNumber(uint256 myNumber) public pure returns (uint256) {
        return myNumber + myNumber;
    }

    //memory keyword data will only be stored during the execution of the function
    //storage will live after the execution of the function
    function addAccountTolist(string memory name, address accountAdress)
        public
    {
        listAccount.push(AccountDetails(name, accountAdress));
    }
}
