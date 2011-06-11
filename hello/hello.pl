#!/usr/bin/env perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::RealBin/extlib/perl5/lib";

use Mojolicious::Lite;

get '/' => sub { shift->render_text('Hello World!') };

app->start;
