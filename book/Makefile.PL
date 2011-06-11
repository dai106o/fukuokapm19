#!/usr/bin/env perl

use ExtUtils::MakeMaker;
WriteMakefile(
  PREREQ_PM => {
  'Mojolicious' => '1.42',
  'DBIx::Skinny' => 0,
  'Mojolicious::Plugin::Validator'=>0,
  'DBD::SQLite'=>0,
  'HTML::FillInForm'=>0,
  }
);
