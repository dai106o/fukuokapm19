# 追加実行
post '/add' => sub {
    my $self = shift;

    my $validator = $self->create_validator;
    $validator->field('title')->required(1)->length(1,140);
    $validator->field('detail')->required(1)->length(1,140);

    if ($self->validate($validator)) {

        my $book = $self->model->create('book',$validator->values);

        $self->flash('message'=>sprintf('「%s」が追加されました。',$book->title));
        $self->redirect_to('index');

    } else {
        $self->stash('id',undef);
        my $html = $self->render_partial()->to_string;
        $html = HTML::FillInForm->fill(
            \$html, $self->req->params,
        );

        return $self->render_text($html, format => 'html');
    }

}=>'edit';
