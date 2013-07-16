#!/bin/bash

HOME=/home/sc-staging
source $HOME/.virtualenvs/suttacentral/bin/activate
cd $HOME/suttacentral/python
exec cherryd -i server
