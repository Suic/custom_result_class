use utf8;
package DB::Result::Message;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Result::Message

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

=head1 TABLE: C<messages>

=cut

__PACKAGE__->table("messages");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 message_template_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 extra

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "message_template_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "extra",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 message_template

Type: belongs_to

Related object: L<DB::Result::MessageTemplate>

=cut

__PACKAGE__->belongs_to(
  "message_template",
  "DB::Result::MessageTemplate",
  { id => "message_template_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-06-03 13:31:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nd3TDJGOTEExMKVSCqiAhA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
