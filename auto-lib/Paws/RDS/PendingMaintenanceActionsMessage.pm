
package Paws::RDS::PendingMaintenanceActionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has PendingMaintenanceActions => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ResourcePendingMaintenanceActions]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::PendingMaintenanceActionsMessage

=head1 ATTRIBUTES

=head2 Marker => Str

  

An optional pagination token provided by a previous
C<DescribePendingMaintenanceActions> request. If this parameter is
specified, the response includes only records beyond the marker, up to
a number of records specified by C<MaxRecords> .









=head2 PendingMaintenanceActions => ArrayRef[Paws::RDS::ResourcePendingMaintenanceActions]

  

Provides a list of the pending maintenance actions for the resource.











=cut
