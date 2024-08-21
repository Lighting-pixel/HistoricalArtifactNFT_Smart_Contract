// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract artifact {
    string public contractName = "HistoricalArtifactNFT"; 
    string public symbol = "HISTART";

    struct Artifact {
        string name;
        string description;
        string imageURI;
        string provenance;
    }

    // Mapping from token ID to owner address
    mapping(uint256 => address) private _owners;

    // Mapping from owner address to token count
    mapping(address => uint256) private _balances;

    // Mapping from token ID to artifact metadata
    mapping(uint256 => Artifact) private _artifacts;

    // Mapping from token ID to approved address
    mapping(uint256 => address) private _tokenApprovals;

    uint256 private _totalSupply;

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    // Modifier to check if the caller is the owner of the token
    modifier onlyOwnerOf(uint256 tokenId) {
        require(ownerOf(tokenId) == msg.sender, "Caller is not the owner");
        _;
    }

    // Function to get the total supply of tokens
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    // Function to get the owner of a token ID
    function ownerOf(uint256 tokenId) public view returns (address) {
        return _owners[tokenId];
    }

    // Function to get the balance of an owner
    function balanceOf(address owner) public view returns (uint256) {
        return _balances[owner];
    }

    // Function to mint a new NFT
    function mint(
        string memory artifactName,  // Renamed parameter
        string memory description,
        string memory imageURI,
        string memory provenance
    ) public {
        uint256 tokenId = _totalSupply;
        _totalSupply += 1;

        _owners[tokenId] = msg.sender;
        _balances[msg.sender] += 1;
        _artifacts[tokenId] = Artifact(artifactName, description, imageURI, provenance);

        emit Transfer(address(0), msg.sender, tokenId);
    }

    // Function to get artifact metadata
    function getArtifact(uint256 tokenId) public view returns (Artifact memory) {
        require(_owners[tokenId] != address(0), "Query for nonexistent token");
        return _artifacts[tokenId];
    }

    // Function to approve another address to manage a token
    function approve(address to, uint256 tokenId) public onlyOwnerOf(tokenId) {
        _tokenApprovals[tokenId] = to;
        emit Approval(msg.sender, to, tokenId);
    }

    // Function to get the approved address for a token
    function getApproved(uint256 tokenId) public view returns (address) {
        return _tokenApprovals[tokenId];
    }

    // Function to transfer token
    function transferFrom(address from, address to, uint256 tokenId) public {
        require(ownerOf(tokenId) == from, "Transfer from incorrect owner");
        require(msg.sender == from || msg.sender == getApproved(tokenId), "Caller is not approved");

        _balances[from] -= 1;
        _balances[to] += 1;
        _owners[tokenId] = to;
        _tokenApprovals[tokenId] = address(0);

        emit Transfer(from, to, tokenId);
    }
}

