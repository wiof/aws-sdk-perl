
package Paws::CodeDeploy::ListApplicationsOutput;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'applications' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListApplicationsOutput

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[Str]

A list of application names.



=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list applications call to
return the next set of applications, will also be returned. in the
list.




=cut

1;