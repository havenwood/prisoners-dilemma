prisoners-dilemma
=================

A Ruby Simulator for the Prisoners' Dilemma

## Install

`$ gem install prisoners-dilemma`

## Usage

Command line:

`$ prisoners-dilemma`

or Library:

```ruby
require 'prisoners-dilemma'

Game.new.play

# => ...
# Round 9999:
#   Neither Cooperate
# 
# Round 10000:
#   Both Cooperate
#
# Final Earnings:
#	  $25,750 Red
#	  $25,745 Green
#	  ---
#	  $51,495
```

## Players

For the moment, the two players are RedPlayer and GreenPlayer. Edit red.rb and green.rb to adjust strategy.