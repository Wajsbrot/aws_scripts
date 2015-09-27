#!/usr/bin/env bash

aws ec2 request-spot-instances --spot-price 0.5 --launch-specification file://$HOME/Dropbox/scripts/config.json
