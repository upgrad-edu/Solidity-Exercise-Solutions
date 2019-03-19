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
    function percentage() public returns(uint){
        uint sum=0;
        for(uint i=0; i<marks.length;i++){
            sum=sum+marks[i].score;
        }
        return sum*100/(marks.length*100);
    }
}