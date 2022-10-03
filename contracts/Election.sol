pragma solidity >=0.4.22 <0.8.0;

contract Election {
    string public candidate;

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;

    uint public candidateCount;
    //constructor
    constructor() public {
        addCandidate("candidate 1");
        addCandidate("candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidateCount++;
        candidates[candidateCount] =  Candidate(candidateCount, _name,0);
    }




}