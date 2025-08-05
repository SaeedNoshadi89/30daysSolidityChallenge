// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract PollStations {
    string[] private candidateNames;
    mapping(string => uint256) private voteCount;


    function addCandidates(string memory _candidate) public {  
        candidateNames.push(_candidate);
        voteCount[_candidate] = 0;
    }

    function vote(string memory _candidate) public {   
        voteCount[_candidate]++;
    }

    function getCandidates() public view returns(string[] memory){
        return candidateNames;
    }

    function getVote(string memory _candidate) public view returns(uint256){
        return voteCount[_candidate];
    }

}
