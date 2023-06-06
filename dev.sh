#!/usr/bin/env bash
{ set +x; } 2>/dev/null

export PGDATABASE="7d2d_db"

( set -x; find "${BASH_SOURCE[0]%/*}" -name '*.sql' ! -name '_*' -exec psql -f {} \; )
