pragma solidity 0.8.6;

import "https://github.com/nibbstack/erc721/tree/master/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/nibbstack/erc721/tree/master/src/contracts/ownership/ownable.sol";


contract NewNFT is NFTokenMetadata, Ownable {

    constructor(){
        nftName = "Synth NFT";
        nftSymbol = "SYN";
     }
    
    //_uriにIPFSのアドレスが入るyo
    function mint(address _to ,uint256 _tokenId, string calldata _uri) external onlyOwner{
        super._mint(_to, _tokenId);
        super._setTokenUri(_tokenId, _uri);
    }
}