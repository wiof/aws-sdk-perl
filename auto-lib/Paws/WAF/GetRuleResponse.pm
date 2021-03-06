
package Paws::WAF::GetRuleResponse;
  use Moose;
  has Rule => (is => 'ro', isa => 'Paws::WAF::Rule');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRuleResponse

=head1 ATTRIBUTES


=head2 Rule => L<Paws::WAF::Rule>

Information about the Rule that you specified in the C<GetRule>
request. For more information, see the following topics:

=over

=item * Rule: Contains C<MetricName>, C<Name>, an array of C<Predicate>
objects, and C<RuleId>

=item * Predicate: Each C<Predicate> object contains C<DataId>,
C<Negated>, and C<Type>

=back





=cut

1;