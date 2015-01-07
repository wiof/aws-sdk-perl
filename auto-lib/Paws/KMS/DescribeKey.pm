
package Paws::KMS::DescribeKey {
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::DescribeKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DescribeKey - Arguments for method DescribeKey on Paws::KMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeKey on the 
AWS Key Management Service service. Use the attributes of this class
as arguments to method DescribeKey.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeKey.

As an example:

  $service_obj->DescribeKey(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> KeyId => Str

  

Unique identifier of the customer master key to be described. This can
be an ARN, an alias, or a globally unique identifier.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DescribeKey in Paws::KMS

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
