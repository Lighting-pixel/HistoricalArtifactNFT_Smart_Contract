# HistoricalArtifactNFT Smart Contract

## Overview

The `artifact` smart contract is an implementation of an ERC721-like non-fungible token (NFT) designed for managing and transferring unique historical artifacts. Each artifact is represented as an NFT with metadata including its name, description, image URI, and provenance.

## Vision


![HistoricalArtifactNFT Logo](/Screenshot%202024-08-21%20120908.png) 

The **HistoricalArtifactNFT** project aims to revolutionize the way historical artifacts are preserved and transferred. By leveraging blockchain technology, we ensure that each artifact's history, ownership, and provenance are securely and transparently recorded. This creates a digital legacy for historical artifacts, enabling enthusiasts, researchers, and collectors to interact with history in a new and meaningful way.

## Contract Details

- **Contract Name**: `HistoricalArtifactNFT`
- **Symbol**: `HISTART`
- **Contract Address** : 0xc8A179761d50B2b2779285036071D6129faF1586

- **Contract Details:**![HistoricalArtifactNFT Logo](/Screenshot%202024-08-21%20115451.png)

### Metadata Structure

Each artifact is represented by the `Artifact` struct containing:
- `name`: The name of the artifact.
- `description`: A description of the artifact.
- `imageURI`: A URL to an image of the artifact.
- `provenance`: The history or origin of the artifact.

## Functions

### Deployment

1. **Compile and Deploy**:
   - Use Remix IDE to compile and deploy the smart contract defined in `artifact.sol`.

### Functions

1. **`mint`**
   - **Description**: Mints a new NFT with the specified metadata.
   - **Parameters**:
     - `artifactName`: Name of the artifact.
     - `description`: Description of the artifact.
     - `imageURI`: URI of the artifact's image.
     - `provenance`: Provenance of the artifact.
   - **Usage**: Call this function to create a new artifact NFT.

2. **`getArtifact`**
   - **Description**: Retrieves metadata for a specific token ID.
   - **Parameters**:
     - `tokenId`: The ID of the token.
   - **Returns**: `Artifact` struct with metadata of the specified token.
   - **Usage**: Call this function to get details of a particular artifact.

3. **`approve`**
   - **Description**: Grants permission for another address to manage a specific token.
   - **Parameters**:
     - `to`: Address to approve.
     - `tokenId`: Token ID to be approved.
   - **Usage**: Call this function to approve another address to manage your token.

4. **`getApproved`**
   - **Description**: Retrieves the address approved to manage a specific token.
   - **Parameters**:
     - `tokenId`: Token ID to query.
   - **Returns**: Address that has been approved.
   - **Usage**: Call this function to check who is approved to manage the token.

5. **`transferFrom`**
   - **Description**: Transfers ownership of a token from one address to another.
   - **Parameters**:
     - `from`: Address of the current owner.
     - `to`: Address of the new owner.
     - `tokenId`: Token ID to be transferred.
   - **Usage**: Call this function to transfer token ownership. Only the owner or an approved address can execute this.

6. **`totalSupply`**
   - **Description**: Retrieves the total number of minted tokens.
   - **Usage**: Call this function to get the count of all tokens created.

7. **`ownerOf`**
   - **Description**: Retrieves the owner of a specific token.
   - **Parameters**:
     - `tokenId`: The ID of the token.
   - **Returns**: Address of the current owner.
   - **Usage**: Call this function to find out who owns a particular token.

8. **`balanceOf`**
   - **Description**: Retrieves the number of tokens owned by a specific address.
   - **Parameters**:
     - `owner`: Address to query.
   - **Returns**: Number of tokens owned.
   - **Usage**: Call this function to check the balance of an address.

## Events

- **`Transfer`**: Emitted when a token is transferred from one address to another.
- **`Approval`**: Emitted when an address is approved to manage a specific token.


## Future Scope

1. **Enhanced Metadata**: Integrate with external databases to fetch detailed artifact information and historical context.
2. **Marketplace Integration**: Develop a marketplace where users can buy, sell, and auction historical artifacts.
3. **Augmented Reality**: Implement AR features to visualize artifacts in a virtual space.
4. **Cross-Chain Compatibility**: Expand the contract's functionality to support multiple blockchain platforms for wider accessibility.

## Personal Details

- **Developer**: Ayan Nawchoo
- **Contact**: ayannawchoo2@gmail.com
- **GitHub**: https://github.com/Lighting-pixel
