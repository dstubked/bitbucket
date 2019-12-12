#!/bin/bash
curl -u "$AQUA_USERNAME:$AQUA_PASSWORD" -k -X POST "$AQUA_SERVER_URL/api/v1/scanner/registry/Docker%20Hub/image/dstubked/bitbucket:$BITBUCKET_BUILD_NUMBER/scan"
