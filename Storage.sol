pragma solidity 0.6.0;

contract SimpmeStorage {
    
    
    struct People {
        string name;
        address myAddressAcc;
    }
    
    People public personAccount = People({name: "Maria Roberta", myAddressAcc: 0xc5b16116c5873c565983c9B1751bFd7809479F0F});
    
    
    
    //Data Types
    uint256 public number = 5;
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
    function retrieveNumber() public view returns(uint256) {
        return number;
    }
    
    
    function sumNumber(uint256 myNumber) public pure returns(uint256) {
        return myNumber +myNumber;
        
    }
}