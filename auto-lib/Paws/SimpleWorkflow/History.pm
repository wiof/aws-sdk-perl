
package Paws::SimpleWorkflow::History;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::HistoryEvent]', traits => ['Unwrapped'], xmlname => 'events' , required => 1);
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextPageToken' );


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::History

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[L<Paws::SimpleWorkflow::HistoryEvent>]

  The list of history events.

=head2 NextPageToken => Str

  If a C<NextPageToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<nextPageToken>. Keep all other
arguments unchanged.

The configured C<maximumPageSize> determines how many results can be
returned in a single call.


=cut

1;