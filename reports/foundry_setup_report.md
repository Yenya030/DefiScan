# Foundry Project Setup Report

This report describes the steps taken to initialize the Foundry project, provide example contracts and scripts, and run tests.

## Initialization

1. Ran `forge init` in the repository root. The command attempted to fetch the `forge-std` library but failed because internet access is disabled. Basic project structure was created: `src`, `script`, `test`, `foundry.toml`.
2. Added a minimal local version of `forge-std` under `lib/forge-std` to satisfy imports for `Script.sol` and `Test.sol`.

## Contracts and Scripts

- `src/Counter.sol` – simple counter contract.
- `script/Counter.s.sol` – deployment script using Foundry's `Script` interface.
- `test/Counter.t.sol` – test contract verifying counter functionality.

## Testing

Attempts to compile and run tests failed because `forge` could not download the required Solidity compiler without internet access. Example error:

```
Error: error sending request for url (https://binaries.soliditylang.org/linux-amd64/list.json)
```

To run the tests locally, ensure the environment has the necessary solc binaries available or provide internet access for Foundry to download them.

## Usage Notes

When dependencies and the Solidity compiler are available, tests can be executed with:

```
forge test -vvv
```

Deployment scripts can be run with:

```
forge script script/Counter.s.sol --fork-url <RPC_URL> --broadcast
```


