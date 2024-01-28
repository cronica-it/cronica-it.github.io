# README

This is the main location where the web site content is stored.

## Language

The main content is in Romanian.

## Events & memories

The timeline events are stored in the `website/evenimente` folder,
and the memories in the `website/amintiri` folder. The format is
markdown.

## Branches

There are two Git branches, `master` and `preview`.

Pushes to the `master` branch trigger automated builds which are
published at the main web address
([https://cronica-it.github.io/](https://cronica-it.github.io/)).

Please note that the Git repository name and the web site address
are identical; this is a GitHub naming convention for the main
project web sites.

Pushes to the `preview` branch trigger automated builds in the
`preview` Git repository, which are published at the inner web sub-address
([https://cronica-it.github.io/preview/](https://cronica-it.github.io/preview)).

### Workflow

The recommended workflow is to add the new content first into the
preview site (by pushing to the `preview` branch), check it,
possibly further improve it, and, when
the author is happy with the result, publish it on the main site
(by merging into the `master` branch).
