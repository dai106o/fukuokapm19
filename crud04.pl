# アイテムリスト
get '/' => sub {
    my $self = shift;

    my @books = $self->model->search('book',{},{order_by=>[{id=>'ASC'}]});

    $self->stash->{books} = \@books;

}=>'index';
