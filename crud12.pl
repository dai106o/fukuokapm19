# 削除実行
get '/delete/:id' => sub {
    my $self = shift;

    if (my $book = $self->model->single('book',{id=>$self->stash('id')})) {
        my $title = $book->title;
        $book->delete();

        $self->flash('message'=>sprintf('「%s」が削除されました。',$title));
        $self->redirect_to('index');


    } else {

        return $self->render_not_found;

    }

};
