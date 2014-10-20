package MyWebsite::Schema::Result::Product;

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

MyWebsite::Schema::Result::Product

=cut

__PACKAGE__->table("product");

=head1 ACCESSORS

=head2 product_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'product_product_id_seq'

=head2 product_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 price

  data_type: 'numeric'
  is_nullable: 1
  size: [10,2]

=cut

__PACKAGE__->add_columns(
  "product_id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "product_product_id_seq",
  },
  "product_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "price",
  { data_type => "numeric", is_nullable => 1, size => [10, 2] },
);
__PACKAGE__->set_primary_key("product_id");

=head1 RELATIONS

=head2 orderdetails

Type: has_many

Related object: L<MyWebsite::Schema::Result::Orderdetail>

=cut

__PACKAGE__->has_many(
  "orderdetails",
  "MyWebsite::Schema::Result::Orderdetail",
  { "foreign.product_id" => "self.product_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2014-10-20 18:22:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:iQ23hYb0FKDTyg9NwIfhPw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
