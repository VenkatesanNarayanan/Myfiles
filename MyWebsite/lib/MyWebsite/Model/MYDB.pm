package MyWebsite::Model::MYDB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'MyWebsite::Schema',
    
    connect_info => {
        dsn => 'dbi:Pg:dbname=mydb',
        user => 'venkatesan',
        password => '1774',
        quote_names => q{1},
        AutoCommit => q{1},
    }
);

=head1 NAME

MyWebsite::Model::MYDB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<MyWebsite>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<MyWebsite::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.65

=head1 AUTHOR

venkatesan

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;