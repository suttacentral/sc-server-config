#!/bin/bash

HOME=/home/sc-production
source $HOME/.virtualenvs/suttacentral/bin/activate
cd $HOME/suttacentral/python
exec cherryd -i server
