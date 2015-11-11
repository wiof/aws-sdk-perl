package Paws::ECS::TaskOverride;
  use Moose;
  has ContainerOverrides => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ContainerOverride]', xmlname => 'containerOverrides', request_name => 'containerOverrides', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::TaskOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::TaskOverride object:

  $service_obj->Method(Att1 => { ContainerOverrides => $value, ..., ContainerOverrides => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::TaskOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerOverrides

=head1 DESCRIPTION

The overrides associated with a task.

=head1 ATTRIBUTES


=head2 ContainerOverrides => ArrayRef[L<Paws::ECS::ContainerOverride>]

  One or more container overrides sent to a task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

