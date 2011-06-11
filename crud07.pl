# 追加フォーム
get '/add' =>sub {
    my $self = shift;

    $self->stash('id',undef);
}=>'edit';

