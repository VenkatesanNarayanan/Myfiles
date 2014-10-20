package MyWebsite::Schema::Result::Customer;

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

MyWebsite::Schema::Result::Customer

=cut

__PACKAGE__->table("customer");

=head1 ACCESSORS

=head2 customer_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'customer_customer_id_seq'

=head2 customer_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 address

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 35

=head2 ph_no

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=cut

__PACKAGE__->add_columns(
  "customer_id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "customer_customer_id_seq",
  },
  "customer_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "address",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 35 },
  "ph_no",
  { data_type => "varchar", is_nullable => 1, size => 15 },
);
__PACKAGE__->set_primary_key("customer_id");

=head1 RELATIONS

=head2 orders

Type: has_many

Related object: L<MyWebsite::Schema::Result::Order>

=cut

__PACKAGE__->has_many(
  "orders",
  "MyWebsite::Schema::Result::Order",
  { "foreign.customer_id" => "self.customer_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2014-10-20 18:22:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wdL8B8wHCbqb/TptP8R3nQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
