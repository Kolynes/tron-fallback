
pragma solidity >=0.4.23 <0.6.0;

contract TronFallback {
    address payable public owner;

    constructor(address payable creator) public {
        owner = creator;
    } 

    function() external payable {
        if(msg.value > 0)
            owner.transfer(msg.value);
    }
}