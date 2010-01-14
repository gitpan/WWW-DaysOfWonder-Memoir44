# 
# This file is part of WWW-DaysOfWonder-Memoir44
# 
# This software is copyright (c) 2009 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
use 5.010;
use strict;
use warnings;

use ORLite::Migrate::Patch;

# create the host settings table
do(<<'END_SQL') unless table_exists('scenarios');
CREATE TABLE scenario (
    id          INTEGER PRIMARY KEY,
    name        VARCHAR,
    operation   VARCHAR,
    updated     VARCHAR(10),
    rating      INTEGER,
    front       VARCHAR,
    author      VARCHAR,
    need_tp     BOOLEAN,        -- terrain pack
    need_ef     BOOLEAN,        -- east front
    need_pt     BOOLEAN,        -- pacific theater
    need_mt     BOOLEAN,        -- mediterranean theater
    need_ap     BOOLEAN,        -- air pack
    need_bm     BOOLEAN,        -- battle map
    need_cb     BOOLEAN,        -- campaign books
    board       VARCHAR,
    format      VARCHAR,
    source      VARCHAR
)
END_SQL
