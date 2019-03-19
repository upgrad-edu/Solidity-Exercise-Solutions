pragma solidity ^0.5.0;

contract C {
    function summation(uint n) public returns(uint) {
       uint sum;
       sum=0;
       for(uint i=1;i<n+1;i++){
           sum=sum+i;
       }
      return sum;
    }
}