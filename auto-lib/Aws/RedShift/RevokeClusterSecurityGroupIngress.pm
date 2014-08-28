
package Aws::RedShift::RevokeClusterSecurityGroupIngress {
  use Moose;
  has CIDRIP => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeClusterSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::RevokeClusterSecurityGroupIngressResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeClusterSecurityGroupIngressResult');
}
1;
  