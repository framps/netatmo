#!/bin/bash

# MIT License
#
# Copyright (c) 2018 framp at linux-tips-and-tricks dot de
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of#the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

. init.sh	# init CLIENT_ID and CLIENT_SECRET
. constants.sh

curl --silent -H "Content-Type: application/x-www-form-urlencoded" -d "grant_type=password&client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&username=$USERNAME&password=$PASSWORD&scope=read_camera" -X POST $OAUTH_EP 2>&1 | jq -r '.access_token, .refresh_token' | tee oauth2.txt
