
package Paws::CodeDeploy::ListApplicationRevisionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has Revisions => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::RevisionLocation]', traits => ['Unwrapped'], xmlname => 'revisions' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListApplicationRevisionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If a large amount of information is returned, an identifier will also
be returned. It can be used in a subsequent list application revisions
call to return the next set of application revisions in the list.



=head2 Revisions => ArrayRef[L<Paws::CodeDeploy::RevisionLocation>]

A list of locations that contain the matching revisions.




=cut

1;