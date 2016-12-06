#!/bin/bash

export PATH=${PATH}:${HOME}/.cabal/bin
cabal update
cabal install happy
cabal install postgrest
mkdir bin
cp /root/.cabal/bin/postgrest bin/postgrest
