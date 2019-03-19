pragma solidity ^0.5.0;

contract C {
    
    function modifiedSum(uint n) bigSums(n) public returns(uint) {
       uint sum;
       sum=0;
       for(uint i=1;i<n+1;i++){
           sum=sum+i;
       }
       return sum;
    }
    modifier bigSums(uint n){
        require(n>10);
        _;
    }
}