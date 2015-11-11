
package Paws::Firehose::PutRecordBatch;
  use Moose;
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::Firehose::Record]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRecordBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::PutRecordBatchOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::PutRecordBatch - Arguments for method PutRecordBatch on Paws::Firehose

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRecordBatch on the 
Amazon Kinesis Firehose service. Use the attributes of this class
as arguments to method PutRecordBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRecordBatch.

As an example:

  $service_obj->PutRecordBatch(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamName => Str

  The name of the delivery stream.


=head2 B<REQUIRED> Records => ArrayRef[L<Paws::Firehose::Record>]

  One or more records.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRecordBatch in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

