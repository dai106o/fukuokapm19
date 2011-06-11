# 更新フォーム
get '/edit/:id' => sub {
    my $self = shift;

    if (my $book = $self->model->single('book',{id=>$self->stash('id')})) {

        my $html = $self->render_partial()->to_string;

        $html = HTML::FillInForm->fill(
            \$html, $book->get_columns,
        );

        return $self->render_text($html, format => 'html');

    } else {

        return $self->render_not_found;

    }

}=>'edit';
