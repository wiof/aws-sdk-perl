
package Paws::EC2::CreateSpotDatafeedSubscriptionResult;
  use Moose;
  has SpotDatafeedSubscription => (is => 'ro', isa => 'Paws::EC2::SpotDatafeedSubscription', xmlname => 'spotDatafeedSubscription', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSpotDatafeedSubscriptionResult

=head1 ATTRIBUTES


=head2 SpotDatafeedSubscription => L<Paws::EC2::SpotDatafeedSubscription>

The Spot instance data feed subscription.




=cut

