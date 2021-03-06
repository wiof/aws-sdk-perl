
package Paws::EC2::CreateVpcPeeringConnectionResult;
  use Moose;
  has VpcPeeringConnection => (is => 'ro', isa => 'Paws::EC2::VpcPeeringConnection', xmlname => 'vpcPeeringConnection', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcPeeringConnectionResult

=head1 ATTRIBUTES


=head2 VpcPeeringConnection => L<Paws::EC2::VpcPeeringConnection>

Information about the VPC peering connection.




=cut

