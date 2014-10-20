package MyWebsite::Schema::Result::Order;

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

MyWebsite::Schema::Result::Order

=cut

__PACKAGE__->table("order");

=head1 ACCESSORS

=head2 order_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'order_order_id_seq'

=head2 order_date

  data_type: 'date'
  is_nullable: 1

=head2 customer_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 delivery_date

  data_type: 'date'
  is_nullable: 1

=head2 status

  data_type: 'enum'
  default_value: 'pending'
  extra: {custom_type_name => "status",list => ["delivered","not delivered","pending"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "order_id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "order_order_id_seq",
  },
  "order_date",
  { data_type => "date", is_nullable => 1 },
  "customer_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "delivery_date",
  { data_type => "date", is_nullable => 1 },
  "status",
  {
    data_type => "enum",
    default_value => "pending",
    extra => {
      custom_type_name => "status",
      list => ["delivered", "not delivered", "pending"],
    },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("order_id");

=head1 RELATIONS

=head2 customer

Type: belongs_to

Related object: L<MyWebsite::Schema::Result::Customer>

=cut

__PACKAGE__->belongs_to(
  "customer",
  "MyWebsite::Schema::Result::Customer",
  { customer_id => "customer_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 orderdetails

Type: has_many

Related object: L<MyWebsite::Schema::Result::Orderdetail>

=cut

__PACKAGE__->has_many(
  "orderdetails",
  "MyWebsite::Schema::Result::Orderdetail",
  { "foreign.order_id" => "self.order_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2014-10-20 18:22:13
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4qnHTwPyVvHJRLacmZ86Rg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
