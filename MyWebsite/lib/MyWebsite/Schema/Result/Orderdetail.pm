package MyWebsite::Schema::Result::Orderdetail;

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

MyWebsite::Schema::Result::Orderdetail

=cut

__PACKAGE__->table("orderdetail");

=head1 ACCESSORS

=head2 od_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'orderdetail_od_id_seq'

=head2 order_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 product_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 quantity

  data_type: 'smallint'
  is_nullable: 1

=head2 price

  data_type: 'numeric'
  is_nullable: 1
  size: [10,2]

=cut

__PACKAGE__->add_columns(
  "od_id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "orderdetail_od_id_seq",
  },
  "order_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "product_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "quantity",
  { data_type => "smallint", is_nullable => 1 },
  "price",
  { data_type => "numeric", is_nullable => 1, size => [10, 2] },
);
__PACKAGE__->set_primary_key("od_id");

=head1 RELATIONS

=head2 order

Type: belongs_to

Related object: L<MyWebsite::Schema::Result::Order>

=cut

__PACKAGE__->belongs_to(
  "order",
  "MyWebsite::Schema::Result::Order",
  { order_id => "order_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 product

Type: belongs_to

Related object: L<MyWebsite::Schema::Result::Product>

=cut

__PACKAGE__->belongs_to(
  "product",
  "MyWebsite::Schema::Result::Product",
  { product_id => "product_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2014-10-20 18:22:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dtkjLRk6WbbQLeUKyy5hTg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
