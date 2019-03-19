pragma solidity ^0.5.0;

contract C {
    function comparison(uint a, uint b) public {
       uint c;
       if(a>b){
           c=a;
       }
       else{
           c=b;
       }
         log1(
            bytes32(c),
            bytes32(uint256(msg.sender))
        );
    }
}