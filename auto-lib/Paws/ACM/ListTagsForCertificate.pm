
package Paws::ACM::ListTagsForCertificate;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACM::ListTagsForCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ListTagsForCertificate - Arguments for method ListTagsForCertificate on Paws::ACM

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForCertificate on the 
AWS Certificate Manager service. Use the attributes of this class
as arguments to method ListTagsForCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForCertificate.

As an example:

  $service_obj->ListTagsForCertificate(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

String that contains the ARN of the ACM Certificate for which you want
to list the tags. This must be of the form:

C<arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012>

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForCertificate in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

