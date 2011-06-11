#!/usr/bin/env perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::RealBin/extlib/lib/perl5";

#DBモデル定義
package DB;


#main定義
package main;

#Plugin,Modelのセットアップ

#コントローラー定義

#Mojoliciousアプリケーションの起動
app->start;

#テンプレート定義
__DATA__

