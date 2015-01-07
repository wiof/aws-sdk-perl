
package Paws::ElastiCache::CreateReplicationGroup {
  use Moose;
  has AutomaticFailoverEnabled => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NumCacheClusters => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredCacheClusterAZs => (is => 'ro', isa => 'ArrayRef[Str]');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnapshotArns => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CreateReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroupResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateReplicationGroup - Arguments for method CreateReplicationGroup on Paws::ElastiCache

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationGroup on the 
Amazon ElastiCache service. Use the attributes of this class
as arguments to method CreateReplicationGroup.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationGroup.

As an example:

  $service_obj->CreateReplicationGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AutomaticFailoverEnabled => Bool

  

Specifies whether a read-only replica will be automatically promoted to
read/write primary if the existing primary fails.

If C<true>, automatic failover is enabled for this replication group.
If C<false>, automatic failover is disabled for this replication group.

Default: false










=head2 AutoMinorVersionUpgrade => Bool

  

Determines whether minor engine upgrades will be applied automatically
to the node group during the maintenance window. A value of C<true>
allows these upgrades to occur; C<false> disables automatic upgrades.

Default: C<true>










=head2 CacheNodeType => Str

  

The compute and memory capacity of the nodes in the node group.

Valid node types are as follows:

=over

=item * General purpose:

=over

=item * Current generation: C<cache.t2.micro>, C<cache.t2.small>,
C<cache.t2.medium>, C<cache.m3.medium>, C<cache.m3.large>,
C<cache.m3.xlarge>, C<cache.m3.2xlarge>

=item * Previous generation: C<cache.t1.micro>, C<cache.m1.small>,
C<cache.m1.medium>, C<cache.m1.large>, C<cache.m1.xlarge>

=back

=item * Compute optimized: C<cache.c1.xlarge>

=item * Memory optimized

=over

=item * Current generation: C<cache.r3.large>, C<cache.r3.xlarge>,
C<cache.r3.2xlarge>, C<cache.r3.4xlarge>, C<cache.r3.8xlarge>

=item * Previous generation: C<cache.m2.xlarge>, C<cache.m2.2xlarge>,
C<cache.m2.4xlarge>

=back

=back

B<Notes:>

=over

=item * All t2 instances are created in an Amazon Virtual Private Cloud
(VPC).

=item * Redis backup/restore is not supported for t2 instances.

=item * Redis Append-only files (AOF) functionality is not supported
for t1 or t2 instances.

=back

For a complete listing of cache node types and specifications, see
Amazon ElastiCache Product Features and Details and Cache Node
Type-Specific Parameters for Memcached or Cache Node Type-Specific
Parameters for Redis.










=head2 CacheParameterGroupName => Str

  

The name of the parameter group to associate with this replication
group. If this argument is omitted, the default cache parameter group
for the specified engine is used.










=head2 CacheSecurityGroupNames => ArrayRef[Str]

  

A list of cache security group names to associate with this replication
group.










=head2 CacheSubnetGroupName => Str

  

The name of the cache subnet group to be used for the replication
group.










=head2 Engine => Str

  

The name of the cache engine to be used for the cache clusters in this
replication group.

Default: redis










=head2 EngineVersion => Str

  

The version number of the cach engine to be used for the cache clusters
in this replication group. To view the supported cache engine versions,
use the I<DescribeCacheEngineVersions> operation.










=head2 NotificationTopicArn => Str

  

The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (SNS) topic to which notifications will be sent.










=head2 NumCacheClusters => Int

  

The number of cache clusters this replication group will initially
have.

If I<AutomaticFailover> is C<enabled>, the value of this parameter must
be at least 2.

The maximum permitted value for I<NumCacheClusters> is 6 (primary plus
5 replicas). If you need to exceed this limit, please fill out the
ElastiCache Limit Increase Request forrm at
http://aws.amazon.com/contact-us/elasticache-node-limit-request.










=head2 Port => Int

  

The port number on which each member of the replication group will
accept connections.










=head2 PreferredCacheClusterAZs => ArrayRef[Str]

  

A list of EC2 availability zones in which the replication group's cache
clusters will be created. The order of the availability zones in the
list is not important.

Default: system chosen availability zones.

Example: One Redis cache cluster in each of three availability zones.
PreferredAvailabilityZones.member.1=us-east-1a
PreferredAvailabilityZones.member.2=us-east-1c
PreferredAvailabilityZones.member.3=us-east-1d










=head2 PreferredMaintenanceWindow => Str

  

The weekly time range (in UTC) during which system maintenance can
occur.

Example: C<sun:05:00-sun:09:00>










=head2 PrimaryClusterId => Str

  

The identifier of the cache cluster that will serve as the primary for
this replication group. This cache cluster must already exist and have
a status of I<available>.

This parameter is not required if I<NumCacheClusters> is specified.










=head2 B<REQUIRED> ReplicationGroupDescription => Str

  

A user-created description for the replication group.










=head2 B<REQUIRED> ReplicationGroupId => Str

  

The replication group identifier. This parameter is stored as a
lowercase string.

Constraints:

=over

=item * A name must contain from 1 to 20 alphanumeric characters or
hyphens.

=item * The first character must be a letter.

=item * A name cannot end with a hyphen or contain two consecutive
hyphens.

=back










=head2 SecurityGroupIds => ArrayRef[Str]

  

One or more Amazon VPC security groups associated with this replication
group.

Use this parameter only when you are creating a replication group in an
Amazon Virtual Private Cloud (VPC).










=head2 SnapshotArns => ArrayRef[Str]

  

A single-element string list containing an Amazon Resource Name (ARN)
that uniquely identifies a Redis RDB snapshot file stored in Amazon S3.
The snapshot file will be used to populate the node group. The Amazon
S3 object name in the ARN cannot contain any commas.

B<Note:> This parameter is only valid if the C<Engine> parameter is
C<redis>.

Example of an Amazon S3 ARN: C<arn:aws:s3:::my_bucket/snapshot1.rdb>










=head2 SnapshotName => Str

  

The name of a snapshot from which to restore data into the new node
group. The snapshot status changes to C<restoring> while the new node
group is being created.

B<Note:> This parameter is only valid if the C<Engine> parameter is
C<redis>.










=head2 SnapshotRetentionLimit => Int

  

The number of days for which ElastiCache will retain automatic
snapshots before deleting them. For example, if you set
C<SnapshotRetentionLimit> to 5, then a snapshot that was taken today
will be retained for 5 days before being deleted.

B<Note:> This parameter is only valid if the C<Engine> parameter is
C<redis>.

Default: 0 (i.e., automatic backups are disabled for this cache
cluster).










=head2 SnapshotWindow => Str

  

The daily time range (in UTC) during which ElastiCache will begin
taking a daily snapshot of your node group.

Example: C<05:00-09:00>

If you do not specify this parameter, then ElastiCache will
automatically choose an appropriate time range.

B<Note:> This parameter is only valid if the C<Engine> parameter is
C<redis>.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CreateReplicationGroup in Paws::ElastiCache

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
