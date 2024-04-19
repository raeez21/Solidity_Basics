

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
The [ExampleMapping.sol](contracts/ExampleMapping.sol) and [ExampleMapping2.sol](contracts/ExampleMapping2.sol) are files for understanding Solidity map data types. ExampleMapping.sol is just basic syntax. The ExampleMapping2.sol is a real use case of mappings- It sends money to the Smart Contract and also updates the balance in a map with senders address as key. The address also can withdraw the money which only he deposited. This also addresses Checks Effects Interactions problem.

The [StructAndChildContracts.sol](contracts/StructAndChildContracts.sol) file shows implementation of logically grouping variables using Struct and Child Contracts. In latter implementation, the main contract{Wallet) creates a new child SC (PaymentsSC) at a new address. This can be complex and takes more gas.  This is simplified using Struct implementation. A struct is used to define new datatypes and group several variables together. 


The [MappingsAndStruct.sol](contracts/MappingsAndStruct.sol) file, shows the usage of struct and mappings together. It defines a wallet as mapping from address to Balances(struct). This mapping stores address of an account as key and Balances struct as value. The Balance struct has several fields like totalBalance, numDeposits, a mapping called deposits, a mapping called withdrawals etc. This wallet has different functions like deposit, withdraw, checkbalance etc.

## [ExampleRequireAssert.sol](contracts/ExampleRequireAssert.sol)
Has a contract which has 2 functions that explains usage of require and assert stmts in exception handling in Solidity. Require is for input validation, it uses up gas until that point when it hits require and then returns rest of gas. Assert is for checking for invariance (states taht our contract or variables should never reach). Assert goes internally to a Panic opcode, it uses all available gas. It doesn't throw an exception, it just stops the execution.
Both require and assert rollsback all operations in that transaction.

## [ExampleTryCatch.sol](contracts/ExampleTryCatch.sol)
This is a file to show usage of try catch in Solidity.
1. 'Require' reverts with an exception called 'Error'
2. 'Assert' reverts with an exception called 'Panic'
3. We can also have custom exceptions using `error NotAllowed(string);` and revert using `revert NotAllowed("Not allowed by you");`

## [ContractsCall.sol](contracts/ContractsCall.sol)
This shows different ways in which we can call a function (deposit()) of a contract SC1 from another contract SC2.
1. In method 1, we creaetd a SC1 object in SC2 and simply called the deposit() along with value and gas.
2. In method 2, we we used low level call() function after encoding the function signature as payload.
3. In method3, we dont know func signature, so create a fallback func in SC1 and then call deposit() from there. In SC2, when we use call() along with epmty payment, it fallsback to receive func of SC1

## [SendTransfer.sol](contracts/SendTransfer.sol)
Progamr to show difference between Send and Transfer. Transfer throws an exception when transfer fails. Send returns a bool. We need to check this value for fail/success

**ALWAYS CHECK RETURN VALUE OF LOW LEVEL FUNCTIONS LIKE SEND() AND CALL()** 




## The Blockchain messenger
This [file](contracts/TheBlockchainMessenger.sol) is a project implementation of a basic Blockchain Messenger. It stores a string message on the blockchain, which is readable for everyone but only writable for the person (or account) that deployed this smart contract. It also has a counter variable which shows how many times that message was updated.
