package MyWebsite::Schema::Result::Stud;

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

MyWebsite::Schema::Result::Stud

=cut

__PACKAGE__->table("stud");

=head1 ACCESSORS

=head2 stname

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 sno

  data_type: 'integer'
  is_nullable: 1

=head2 address

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "stname",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "sno",
  { data_type => "integer", is_nullable => 1 },
  "address",
  { data_type => "varchar", is_nullable => 1, size => 50 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2014-10-20 18:22:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aA5HHVYLWEMcwYJ1WfGhMA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
