
package Paws::WAF::GetSizeConstraintSetResponse;
  use Moose;
  has SizeConstraintSet => (is => 'ro', isa => 'Paws::WAF::SizeConstraintSet');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetSizeConstraintSetResponse

=head1 ATTRIBUTES


=head2 SizeConstraintSet => L<Paws::WAF::SizeConstraintSet>

Information about the SizeConstraintSet that you specified in the
C<GetSizeConstraintSet> request. For more information, see the
following topics:

=over

=item * SizeConstraintSet: Contains C<SizeConstraintSetId>,
C<SizeConstraints>, and C<Name>

=item * C<SizeConstraints>: Contains an array of SizeConstraint
objects. Each C<SizeConstraint> object contains FieldToMatch,
C<TextTransformation>, C<ComparisonOperator>, and C<Size>

=item * FieldToMatch: Contains C<Data> and C<Type>

=back





=cut

1;