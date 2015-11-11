package Paws::CodePipeline::ActionDeclaration;
  use Moose;
  has ActionTypeId => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeId', xmlname => 'actionTypeId', request_name => 'actionTypeId', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::CodePipeline::ActionConfigurationMap', xmlname => 'configuration', request_name => 'configuration', traits => ['Unwrapped','NameInRequest']);
  has InputArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::InputArtifact]', xmlname => 'inputArtifacts', request_name => 'inputArtifacts', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest'], required => 1);
  has OutputArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::OutputArtifact]', xmlname => 'outputArtifacts', request_name => 'outputArtifacts', traits => ['Unwrapped','NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', xmlname => 'roleArn', request_name => 'roleArn', traits => ['Unwrapped','NameInRequest']);
  has RunOrder => (is => 'ro', isa => 'Int', xmlname => 'runOrder', request_name => 'runOrder', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionDeclaration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionDeclaration object:

  $service_obj->Method(Att1 => { ActionTypeId => $value, ..., RunOrder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionDeclaration object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionTypeId

=head1 DESCRIPTION

Represents information about an action declaration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTypeId => L<Paws::CodePipeline::ActionTypeId>

  The configuration information for the action type.


=head2 Configuration => L<Paws::CodePipeline::ActionConfigurationMap>

  The action declaration's configuration.


=head2 InputArtifacts => ArrayRef[L<Paws::CodePipeline::InputArtifact>]

  The name or ID of the artifact consumed by the action, such as a test
or build artifact.


=head2 B<REQUIRED> Name => Str

  The action declaration's name.


=head2 OutputArtifacts => ArrayRef[L<Paws::CodePipeline::OutputArtifact>]

  The name or ID of the result of the action declaration, such as a test
or build artifact.


=head2 RoleArn => Str

  The ARN of the IAM service role that will perform the declared action.
This is assumed through the roleArn for the pipeline.


=head2 RunOrder => Int

  The order in which actions are run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

