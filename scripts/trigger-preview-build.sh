set -e

curl \
--fail-with-body  \
-sSL\
https://api.github.com/repos/cronica-it/preview/actions/workflows/publish-github-pages.yml/dispatches \
-H "Authorization: $1" \
-H 'Accept: application/vnd.github.v3+json' \
-H 'Content-Type: application/json' \
--data '{"ref\":\"master\",\"inputs\":{}}'
