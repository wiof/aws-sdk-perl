
package Paws::ECR::BatchCheckLayerAvailabilityResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECR::LayerFailure]', traits => ['Unwrapped'], xmlname => 'failures' );
  has Layers => (is => 'ro', isa => 'ArrayRef[Paws::ECR::Layer]', traits => ['Unwrapped'], xmlname => 'layers' );


### main pod documentation begin ###

=head1 NAME

Paws::ECR::BatchCheckLayerAvailabilityResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECR::LayerFailure>]

Any failures associated with the call.



=head2 Layers => ArrayRef[L<Paws::ECR::Layer>]

A list of image layer objects corresponding to the image layer
references in the request.




=cut

1;