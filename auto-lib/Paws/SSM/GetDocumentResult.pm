
package Paws::SSM::GetDocumentResult;
  use Moose;
  has Content => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetDocumentResult

=head1 ATTRIBUTES


=head2 Content => Str

The contents of the SSM document.



=head2 Name => Str

The name of the SSM document.




=cut

1;