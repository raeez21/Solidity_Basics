

This workspace contains 3 directories:

1. 'contracts': Holds three contracts with increasing levels of complexity.
2. 'scripts': Contains  typescript files to deploy a contract. It is explained below.
3. 'tests': Contains one Solidity test file for 'Ballot' contract & one JS test file for 'Storage' contract.

SCRIPTS

The 'scripts' folder has four typescript files which help to deploy the 'Storage' contract using 'web3.js' and 'ethers.js' libraries.

For the deployment of any other contract, just update the contract's name from 'Storage' to the desired contract and provide constructor arguments accordingly 
in the file `deploy_with_ethers.ts` or  `deploy_with_web3.ts`

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Storage' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.

Please note, require/import is supported in a limited manner for Remix supported modules.
For now, modules supported by Remix are ethers, web3, swarmgw, chai, multihashes, remix and hardhat only for hardhat.ethers object/plugin.
For unsupported modules, an error like this will be thrown: '<module_name> module require is not supported by Remix IDE' will be shown.
## This Repo
This repo contains sample SOL files inside contracts/ folder. These files were used for learning Solidity basics like basic data types and basic concepts. It also has a mini project called The Blockchain Messenger. It now has 2 SOL files ([PayToUpdateString.sol](contracts/PayToUpdateString.sol) and [FallbackFunc.sol](contracts/FallbackFunc.sol)). First file is a script that allows the user to update a variable only if he pays 1 ETHER. The second file is a sample program to show the logic of receive and fallback functions.

## The Blockchain messenger
This [file](contracts/TheBlockchainMessenger.sol) is a project implementation of a basic Blockchain Messenger. It stores a string message on the blockchain, which is readable for everyone but only writable for the person (or account) that deployed this smart contract. It also has a counter variable which shows how many times that message was updated.
