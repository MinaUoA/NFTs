//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.2;


import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract AIMusicNFT is ERC721URIStorage  {

using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;


    constructor() ERC721("AI Music NFT", "AI MNFT") {}


    function mint(string memory tokenURI)
        public
        returns (uint256)
    {
        _tokenIds.increment();


        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);


        return newItemId;
    }
}