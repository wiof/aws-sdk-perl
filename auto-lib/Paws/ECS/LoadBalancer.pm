package Paws::ECS::LoadBalancer;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', xmlname => 'containerName', request_name => 'containerName', traits => ['Unwrapped','NameInRequest']);
  has ContainerPort => (is => 'ro', isa => 'Int', xmlname => 'containerPort', request_name => 'containerPort', traits => ['Unwrapped','NameInRequest']);
  has LoadBalancerName => (is => 'ro', isa => 'Str', xmlname => 'loadBalancerName', request_name => 'loadBalancerName', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::LoadBalancer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::LoadBalancer object:

  $service_obj->Method(Att1 => { ContainerName => $value, ..., LoadBalancerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::LoadBalancer object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerName

=head1 DESCRIPTION

Details on a load balancer that is used with a service.

=head1 ATTRIBUTES


=head2 ContainerName => Str

  The name of the container (as it appears in a container definition) to
associate with the load balancer.


=head2 ContainerPort => Int

  The port on the container to associate with the load balancer. This
port must correspond to a C<containerPort> in the service's task
definition. Your container instances must allow ingress traffic on the
C<hostPort> of the port mapping.


=head2 LoadBalancerName => Str

  The name of the load balancer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

