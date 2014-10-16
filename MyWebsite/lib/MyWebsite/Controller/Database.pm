package MyWebsite::Controller::Database;
use Moose;
use namespace::autoclean;
use Data::Dumper;
BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

MyWebsite::Controller::Database - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub login :Path(/database/login){
	my ( $self, $c ) = @_;
	$c->stash->{template} = "database/login.tt";
}

sub homepage :Path(/database/homepage){
	my ( $self, $c ) = @_;

	$c->stash->{word}= $c->req->params->{uname};
	my $uname = $c->req->params->{uname};
	my $pword = $c->req->params->{pword};
	my $flag = 1;

	if($uname == "bas" and $pword == "1234")
	{
		$flag = 0;
	}

	if ( $flag ){
		$c->stash->{fail1} = 1;
		$c->stash->{failmsg} = "user name password is wrong";
		$c->stash->{template} = "database/login.tt";
	}
}

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;
    $c->response->body('Matched MyWebsite::Controller::Database in Database.');
}

=encoding utf8

=head1 AUTHOR

venkatesan,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
