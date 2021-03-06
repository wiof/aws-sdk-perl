
package Paws::AutoScaling::DetachInstances;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has ShouldDecrementDesiredCapacity => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DetachInstancesAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DetachInstancesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DetachInstances - Arguments for method DetachInstances on Paws::AutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachInstances on the 
Auto Scaling service. Use the attributes of this class
as arguments to method DetachInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachInstances.

As an example:

  $service_obj->DetachInstances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the group.



=head2 InstanceIds => ArrayRef[Str]

One or more instance IDs.



=head2 B<REQUIRED> ShouldDecrementDesiredCapacity => Bool

If C<True>, the Auto Scaling group decrements the desired capacity
value by the number of instances detached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachInstances in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

