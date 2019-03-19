pragma solidity ^0.5.0;

contract Hospital{
    struct Room{
        bytes32 name;
        bool occupied;
        string occupant;
    }
    Room[] public rooms;
    
    constructor (bytes32[] memory names) public{
        for(uint i=0; i<names.length;i++){
            rooms.push(Room({
                name:names[i],occupied:false,occupant:"none"
            }));
            
        }
    }
    function assignRoom(bytes32 roomName, string memory patientName) public returns(string memory){
        for(uint i=0;i<rooms.length;i++){
            if(rooms[i].name==roomName){
                if(rooms[i].occupied==true){
                    return "room occupied";
                }
                else{
                    rooms[i].occupant=patientName;
                    rooms[i].occupied=true;
                    return "assigned";
                }
                
            }
        }
    }
    

}