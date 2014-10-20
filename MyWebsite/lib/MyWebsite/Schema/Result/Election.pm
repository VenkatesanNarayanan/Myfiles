package MyWebsite::Schema::Result::Election;

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

MyWebsite::Schema::Result::Election

=cut

__PACKAGE__->table("election");

=head1 ACCESSORS

=head2 partty

  data_type: 'text'
  is_nullable: 1

=head2 state

  data_type: 'text'
  is_nullable: 1

=head2 area

  data_type: 'text'
  is_nullable: 1

=head2 candidate

  data_type: 'text'
  is_nullable: 1

=head2 district

  data_type: 'text'
  is_nullable: 1

=head2 votecount

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "partty",
  { data_type => "text", is_nullable => 1 },
  "state",
  { data_type => "text", is_nullable => 1 },
  "area",
  { data_type => "text", is_nullable => 1 },
  "candidate",
  { data_type => "text", is_nullable => 1 },
  "district",
  { data_type => "text", is_nullable => 1 },
  "votecount",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2014-10-20 18:22:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UsfZqAaceH2ra9quU/SctA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
