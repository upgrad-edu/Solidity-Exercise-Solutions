pragma solidity 0.5.0;

contract C {
    struct Marks{
        string subject;
        uint score;
    }
    Marks[] public marks;
    
    function addMarks(string memory subject,uint score) public{
        marks.push(Marks({
            subject: subject,
            score:score
        }));
    }
}