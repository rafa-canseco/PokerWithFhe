# Poker.sol

`Poker.sol` is an Ethereum smart contract that implements the logic of a poker game using homomorphic encryption (HE) technology to ensure the privacy and fairness of the game. The contract allows players to join tables, place bets, and play rounds of poker while maintaining the security of each player's cards and stakes.

## Main Features

- **Table Creation**: Users can create poker tables with specific parameters such as the minimum amount of chips to join, the maximum number of players, and the amount of the big blind.
- **Joining a Table**: Players can join existing tables by making a "buy-in" with an encrypted amount of chips.
- **Betting and Gameplay Actions**: During a game round, players can perform typical poker actions such as check, bet, call, or fold. Bets are handled in an encrypted manner to maintain privacy.
- **Card Distribution**: Cards are distributed in an encrypted and secure manner to each player using public keys provided by the players.
- **Round Management**: The contract manages betting rounds and transitions between different phases of the game (preflop, flop, turn, river).
- **Winner Determination**: At the end of a round, the contract determines the winner using a poker hand evaluator and distributes the pot's chips appropriately.

## Data Structures

- `Table`: Represents a poker table with its state, players, pot, and other relevant details.
- `Round`: Represents a game round within a table, including the round's state, the current turn, and the players' bets.
- `PlayerCardHashes`: Stores the encrypted hashes of a player's cards for later verification.
- `PlayerCards`: Structure used to reveal the players' cards during the showdown.

## Events

- `NewTableCreated`: Emitted when a new table is created.
- `NewBuyIn`: Emitted when a player joins a table.
- `RoundOver`: Emitted when a betting round ends.
- `CommunityCardsDealt`: Emitted when community cards are dealt.
- `TableShowdown`: Emitted when the table enters the showdown phase.

## Main Methods

- `createTable`: Creates a new poker table.
- `buyIn`: Allows a player to join an existing table.
- `playHand`: Allows a player to perform an action during their turn.
- `dealCommunityCards`: Deals the community cards for the current round.
- `showdown`: Executes the showdown logic to determine the winner of the hand.

## Security and Privacy

The contract uses HE to ensure that the actions and cards of the players remain private during the game. Only at the end of a hand, during the showdown, are the cards revealed and their authenticity verified.

## Development Notes

This contract is part of a broader system that includes off-chain nodes and other smart contracts to handle the game logic and secure, decentralized random number generation.

## License

The `Poker.sol` contract is licensed under MIT.
