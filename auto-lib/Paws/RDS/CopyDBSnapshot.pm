
package Paws::RDS::CopyDBSnapshot;
  use Moose;
  has CopyTags => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SourceDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CopyDBSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CopyDBSnapshot - Arguments for method CopyDBSnapshot on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDBSnapshot on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method CopyDBSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyDBSnapshot.

As an example:

  $service_obj->CopyDBSnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CopyTags => Bool

True to copy all tags from the source DB snapshot to the target DB
snapshot; otherwise false. The default is false.



=head2 KmsKeyId => Str

The AWS Key Management Service (AWS KMS) key identifier for an
encrypted DB snapshot. The KMS key identifier is the Amazon Resource
Name (ARN) or the KMS key alias for the KMS encryption key.

If you copy an unencrypted DB snapshot and specify a value for the
C<KmsKeyId> parameter, Amazon RDS encrypts the target DB snapshot using
the specified KMS encryption key.

If you copy an encrypted DB snapshot from your AWS account, you can
specify a value for C<KmsKeyId> to encrypt the copy with a new KMS
encryption key. If you don't specify a value for C<KmsKeyId> then the
copy of the DB snapshot is encrypted with the same KMS key as the
source DB snapshot.

If you copy an encrypted DB snapshot that is shared from another AWS
account, then you must specify a value for C<KmsKeyId>.



=head2 B<REQUIRED> SourceDBSnapshotIdentifier => Str

The identifier for the source DB snapshot.

If you are copying from a shared manual DB snapshot, this must be the
ARN of the shared DB snapshot.

Constraints:

=over

=item * Must specify a valid system snapshot in the "available" state.

=item * If the source snapshot is in the same region as the copy,
specify a valid DB snapshot identifier.

=item * If the source snapshot is in a different region than the copy,
specify a valid DB snapshot ARN. For more information, go to Copying a
DB Snapshot.

=back

Example: C<rds:mydb-2012-04-02-00-01>

Example:
C<arn:aws:rds:rr-regn-1:123456789012:snapshot:mysql-instance1-snapshot-20130805>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 B<REQUIRED> TargetDBSnapshotIdentifier => Str

The identifier for the copied snapshot.

Constraints:

=over

=item * Cannot be null, empty, or blank

=item * Must contain from 1 to 255 alphanumeric characters or hyphens

=item * First character must be a letter

=item * Cannot end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-db-snapshot>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyDBSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

