#!/bin/bash
while true
  do
    STEAK=`gaiacli query account --chain-id=gaia-9002 cosmos1qm7knjdln0ap9fpykdu5rcajm9cf2esvp8ey2v --trust-node$
    passphrase="enter your passphrase here from your account as an string"
    echo "Got ""$((STEAK - 1))"" Reward-STAKE"
    Zahl="$((STEAK - 1))"
    echo $passphrase|gaiacli tx stake delegate --from "main" --validator "cosmosvaloper1qm7knjdln0ap9fpykdu5rcaj$
    sleep 10s
    echo ""
    gaiacli status | jq ".[].voting_power"
    echo ""
    sleep 2s
   done
