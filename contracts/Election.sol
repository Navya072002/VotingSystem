pragma solidity ^0.5.5;

contract Election{
    // Model a candidate

    struct Candidate{
        uint id;
        string name;
        uint voteCount;

    }

    mapping(address => bool) public voters;

    // Store candidate
    // Fetch a candidate

    mapping( uint => Candidate ) public candidates;
    
    // Store candidate count

    uint public candidatesCount;
    


    // constructor

    constructor() public {
       
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");

    }

    function addCandidate(string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    // function vote (uint _candidateId) public {
    //     // record that voter has voted
    //     voters[msg.sender] = true;

    //     // update candidate vote count
    //     candidates[_candidateId].voteCount ++;
    // }
}