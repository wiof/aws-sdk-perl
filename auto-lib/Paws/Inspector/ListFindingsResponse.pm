
package Paws::Inspector::ListFindingsResponse;
  use Moose;
  has FindingArns => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'findingArns' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingArns => ArrayRef[Str]

A list of ARN(s) specifying the finding(s) returned by the action.



=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to 'null'.




=cut

1;