## Online Bughouse Stockfish

This project is a modified version of gbtami/pychess-variants analyis board,
so it can analyse bughouse positions. (I just replaced "crazyhouse" with "bughouse", and removed the part when it puts the taken pieces into hands.)

It is a toy/POC project, and I don't intend to work on it, fix bugs. 

The repository contain the whole pychess-variants project, which is a whole chess server,
with login, server-side chess, and much more.

## Usage

Open [https://bmacho.github.io/online-bughouse-stockfish/analysis.html](https://bmacho.github.io/online-bughouse-stockfish/analysis.html) with ?fen=FEN as a query parameter. 
- E.g. [https://bmacho.github.io/online-bughouse-stockfish/analysis.html?fen=rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR\[p\] w KQkq](https://bmacho.github.io/online-bughouse-stockfish/analysis.html?fen=rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR%5Bp%5D%20w%20KQkq)


## Components

For move generation, validation, analysis it uses
- [[ffish.js]](https://github.com/ianfab/Fairy-Stockfish/tree/master/tests/js#readme) [(npm)](https://www.npmjs.com/package/ffish)
- [[stockfish.wasm]](https://github.com/niklasf/stockfish.wasm) [(npm)](https://npmjs.com/package/stockfish.wasm)

On client side it is based on
[chessgroundx](https://github.com/gbtami/chessgroundx) fork of [chessground](https://github.com/ornicar/chessground).

To bypass browser header restrictions, it uses [coi-serviceworker](https://github.com/gzuidhof/coi-serviceworker).

## Installation

### Prerequisites
* [Mongo daemon](https://docs.mongodb.com/manual/installation/) (You need mongodb up and running)


### Project setup
```
pip3 install -r requirements.txt --user;
yarn install;
yarn dev;
```

For MacOS, replace the last command with:
```
yarn dev-mac
```

### Start server
```
python3 server/server.py
```

### analysis.html

Then you open the output of localhost:8080/analysis/crazyhouse, save it as html, and do some magic with the absolute paths. 
Also if you can't change the headers you should put the coi-serviceworker script into it. 

## Licence 

My work and gbtami's work is under AGPL-3, the components may use more permissive licences.
