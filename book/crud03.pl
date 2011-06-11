package main;

use Mojolicious::Lite;
use HTML::FillInForm;
use utf8;

app->plugin(
    'validator'=>{
        messages => {
            REQUIRED                 => '入力してください',
            LENGTH_CONSTRAINT_FAILED => '140文字以内で入力してください'
        }
    }
);
app->helper(model => sub { my $dbh = DB->new });

app->model->do(q{
CREATE TABLE IF NOT EXISTS book(
id INTEGER PRIMARY KEY,
title TEXT NOT NULL, 
detail TEXT NOT NULL
);
});
