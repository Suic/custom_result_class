use utf8;
package DB::Result::MessageTemplate;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Result::MessageTemplate

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<message_templates>

=cut

__PACKAGE__->table("message_templates");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 200

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 200 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 messages

Type: has_many

Related object: L<DB::Result::Message>

=cut

__PACKAGE__->has_many(
  "messages",
  "DB::Result::Message",
  { "foreign.message_template_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-06-03 13:31:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dL4fJ2fkq9+f1qp/Vq9ZcA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->result_class('CustomClass');
1;
