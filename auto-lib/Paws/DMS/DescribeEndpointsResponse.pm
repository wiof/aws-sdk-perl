
package Paws::DMS::DescribeEndpointsResponse;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Endpoint]');
  has Marker => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEndpointsResponse

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[L<Paws::DMS::Endpoint>]

Endpoint description.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.




=cut

1;