
package Paws::SES::DescribeReceiptRuleSet;
  use Moose;
  has RuleSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReceiptRuleSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DescribeReceiptRuleSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReceiptRuleSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeReceiptRuleSet - Arguments for method DescribeReceiptRuleSet on Paws::SES

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReceiptRuleSet on the 
Amazon Simple Email Service service. Use the attributes of this class
as arguments to method DescribeReceiptRuleSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReceiptRuleSet.

As an example:

  $service_obj->DescribeReceiptRuleSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleSetName => Str

The name of the receipt rule set to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReceiptRuleSet in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

