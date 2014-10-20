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

	my $uname = $c->req->params->{uname};
	my $pword = $c->req->params->{pword};
	my $obj = $c->model('MYDB::Login')->search({});
	$c->log->info(Dumper $obj);
	if($c->req->method eq "POST")
	{
		if($uname eq "bas" and $pword eq "1234")
		{
			$c->stash->{word}= $c->req->params->{uname};
			$c->stash->{template} = "database/homepage.tt";
		} else {
			$c->stash->{fail} = 1;
			$c->stash->{failmsg} = "username password is wrong";
			$c->stash->{template} = "database/login.tt";
		}
	}
}


sub homepage :Path(/database/homepage){
	my ( $self, $c ) = @_;
}

sub aboutme :Path(/database/aboutme){
	my ( $self, $c ) = @_;
}

sub Resume :Path(/database/Resume){
	my ( $self, $c ) = @_;
}

sub cont :Path(/database/cont){
	my ( $self, $c ) = @_;
}

sub gallery :Path(/database/gallery){
	my ( $self, $c ) = @_;
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
