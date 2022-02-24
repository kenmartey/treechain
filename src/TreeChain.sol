// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DevToken is ERC20, Ownable{

    constructor() ERC20("Treechain", "TCT"){}

    function addTokensToSmartcontract(uint256 totalSupply) public onlyOwner{
        _mint(msg.sender, totalSupply);
    }
}

// [ treeId, treeType, Latitude and Longitude, Timestamp, 
// Location, treeState,     TreeCustodiansWalletAddress ] 

contract TreeChain {

    struct TreeChainData {
        uint treeId;
        string treeType;
        int latitude;
        int longitude;
        string location;
        string treeState;
        uint256 timestamp;

    }
    struct TreeChainDataUpdate {
        uint treeId;
        string treeState;
        uint256 timestamp;
    }
    mapping(address => TreeChainData) treeCustodian;

    event TreeChainDataEvent();
    event TreeChainDataUpdateEvent();

    function enterTreeData(
        string memory _treeType, int _latitude, int _longitude, string memory _location,
        string memory _treeState, uint256 _timestamp) public {


    }

    function updateTreeData(uint _treeId, string memory _treeState, uint256 _timestamp) public {

        
    }
}