package MyWebsite::Schema::Result::Log;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

MyWebsite::Schema::Result::Log

=cut

__PACKAGE__->table("log");

=head1 ACCESSORS

=head2 error

  data_type: 'text'
  is_nullable: 1

=head2 time

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "error",
  { data_type => "text", is_nullable => 1 },
  "time",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2014-10-20 18:22:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IuxV6rGWVJ7J26g/nrN7DQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
