#!/usr/bin/env perl

use ExtUtils::MakeMaker;
WriteMakefile(
  PREREQ_PM => {
  'Mojolicious' => '1.42'
  }
);
