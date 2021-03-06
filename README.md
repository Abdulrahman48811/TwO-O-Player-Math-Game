# PLANNING


## Description

Make a two-player math game in which participants take turns answering simple addition questions. Each step generates a new arithmetic question by selecting two integers between 1 and 20. The question is posed to the player whose turn it is, and he or she must answer properly or lose a life.

## Details

- Both players start with 3 lives
- Game ends when one of the players looses all their lives
- At the end of every turn, the game should output new scores for both players
- Game should announce who won and their score
- They loose one life every time they get a question wrong

### 1 - Extract Nouns for Classes
- Game
- Player

### 2 - Write their Roles

**_Game_** - The game will ask participants questions and inform them of the winner.

- After each question, give the current score (lives available).
- After each question, check the players' lives. 
- This should be the primary game loop that the user interacts with. 
- After each loop, current player should be updated.

**_Player_** - The player will be accountable for responding to inquiries as they arise.

- Should maintain track of the number of lives available (state). - Lives should be updated whenever the player replies wrong