#!/bin/bash
# Script For Auto-Delegate from validator kreios 
while true
        do
                passphrase=""
                echo $passphrase|gaiacli tx dist withdraw-rewards --chain-id "genki-2000" --from "main" --is-validator
                STEAK=`gaiacli query account --chain-id=genki-2000 cosmos1qm7knjdln0ap9fpykdu5rcajm9cf2esvp8ey2v --trust-node | jq ".value.coins" | jq ".[0].amount" | bc`
                while [ "$STEAK" != "0" ]
                        do
                                echo ""
                                echo "Got ""$((STEAK ))"" Reward-STAKE"
                                echo ""
                                echo $passphrase|gaiacli tx dist withdraw-rewards --chain-id "genki-2000" --from "main" --is-validator
                                echo $passphrase|gaiacli tx stake delegate --from "main" --validator "cosmosvaloper1qm7knjdln0ap9fpykdu5rcajm9cf2esvynd3xl" --chain-id "genki-2000" --amount "$STEAK""STAKE" 
                                sleep 10s
                                echo ""
                                gaiacli status | jq ".[].voting_power"
                                echo ""
                                sleep 11s
                done
                echo""
                echo "You only have $STEAK STAKE"
                echo ""
                sleep 12000
        done

