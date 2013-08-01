#!perl -T

use strict;
use warnings;

use Template::Test;
use Template::Plugin::Roman;

my %vars = (
    arabic1    => 1,
    arabic5    => 5,
    arabic10   => 10,
    arabic19   => 19,
    arabic45   => 45,
    arabic50   => 50,
    arabic99   => 99,
    arabic123  => 123,
    arabic1938 => 1938,
    arabic4000 => 4000,
    arabic4499 => 4499,
    arabic5000 => 5000,
);

test_expect(\*DATA, undef, \%vars);

__DATA__
-- test --
-- name roman1 --
[% USE Roman -%]
[% arabic1 | roman %]
-- expect --
I

-- test --
-- name roman5 --
[% USE Roman -%]
[% arabic5 | roman %]
-- expect --
V

-- test --
-- name roman10 --
[% USE Roman -%]
[% arabic10 | roman %]
-- expect --
X

-- test --
-- name roman19 --
[% USE Roman -%]
[% arabic19 | roman %]
-- expect --
XIX

-- test --
-- name roman45 --
[% USE Roman -%]
[% arabic45 | roman %]
-- expect --
XLV

-- test --
-- name roman50 --
[% USE Roman -%]
[% arabic50 | roman %]
-- expect --
L

-- test --
-- name roman99 --
[% USE Roman -%]
[% arabic99 | roman %]
-- expect --
XCIX

-- test --
-- name roman123 --
[% USE Roman -%]
[% arabic123 | roman %]
-- expect --
CXXIII

-- test --
-- name roman1938 --
[% USE Roman -%]
[% arabic1938 | roman %]
-- expect --
MCMXXXVIII

-- test --
-- name roman4000 --
[% USE Roman -%]
[% arabic4000 | roman %]
-- expect --
MMMM

-- test --
-- name roman4499 --
[% USE Roman -%]
[% arabic4499 | roman %]
-- expect --
MMMMCDXCIX

-- test --
-- name roman5000 --
[% USE Roman -%]
[% arabic5000 | roman %]
-- expect --
MMMMM


