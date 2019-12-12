#!/bin/bash
sed -n '/<html/,/<\/html>/p' scanout.html.tmp > scanout_$BITBUCKET_BUILD_NUMBER.html
curl -X POST --user "${USR}:${PASSWORD}" "https://api.bitbucket.org/2.0/repositories/${BITBUCKET_REPO_OWNER}/${BITBUCKET_REPO_SLUG}/downloads" --form files=@"/opt/atlassian/pipelines/agent/build/scanout_$BITBUCKET_BUILD_NUMBER.html" -v
