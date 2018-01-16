#!/bin/bash
OAUTH_EP="https://api.netatmo.com/oauth2/token"
GETHOMEDATA_EP="https://api.netatmo.com/api/gethomedata"

ACCESS_TOKEN="$(head -n 1 oauth2.txt)"
REFRESH_TOKEN="$(tail -n 1 oauth2.txt)"


