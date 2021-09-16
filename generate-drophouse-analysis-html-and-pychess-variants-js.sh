#!/bin/bash

# generates analysis.html and pychess-variants.js 

wget localhost:8080/analysis/crazyhouse -O online-drophouse-stockfish/analysis.html ;

cp static/pychess-variants.js online-drophouse-stockfish/static/pychess-variants.js ;
