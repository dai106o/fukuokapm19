# 更新実行
post '/edit/:id' => sub {
    my $self = shift;

    if (my $book = $self->model->single('book',{id=>$self->stash('id')})) {

        my $validator = $self->create_validator;
        $validator->field('title')->required(1)->length(1,140);
        $validator->field('detail')->required(1)->length(1,140);

        if ($self->validate($validator)) {

            $book->update($validator->values);

            $self->flash('message'=>sprintf('「%s」が編集されました。',$book->title));
            $self->redirect_to('index');

        } else {

            my $html = $self->render_partial()->to_string;
            $html = HTML::FillInForm->fill(
                \$html, $self->req->params,
            );

            return $self->render_text($html, format => 'html');
        }

    } else {

        return $self->render_not_found;

    }
}=>'edit';
