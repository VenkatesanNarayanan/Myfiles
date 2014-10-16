package MyWebsite::View::TT;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

MyWebsite::View::TT - TT View for MyWebsite

=head1 DESCRIPTION

TT View for MyWebsite.

=head1 SEE ALSO

L<MyWebsite>

=head1 AUTHOR

venkatesan,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
