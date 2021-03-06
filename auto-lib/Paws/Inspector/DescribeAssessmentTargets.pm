
package Paws::Inspector::DescribeAssessmentTargets;
  use Moose;
  has AssessmentTargetArns => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'assessmentTargetArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAssessmentTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::DescribeAssessmentTargetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentTargets - Arguments for method DescribeAssessmentTargets on Paws::Inspector

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAssessmentTargets on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method DescribeAssessmentTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAssessmentTargets.

As an example:

  $service_obj->DescribeAssessmentTargets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArns => ArrayRef[Str]

The ARN(s) specifying the assessment target(s) that you want to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAssessmentTargets in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

