
package Paws::DataPipeline::GetPipelineDefinition;
  use Moose;
  has PipelineId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineId' , required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPipelineDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::GetPipelineDefinitionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::GetPipelineDefinition - Arguments for method GetPipelineDefinition on Paws::DataPipeline

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPipelineDefinition on the 
AWS Data Pipeline service. Use the attributes of this class
as arguments to method GetPipelineDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPipelineDefinition.

As an example:

  $service_obj->GetPipelineDefinition(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineId => Str

The ID of the pipeline.



=head2 Version => Str

The version of the pipeline definition to retrieve. Set this parameter
to C<latest> (default) to use the last definition saved to the pipeline
or C<active> to use the last definition that was activated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPipelineDefinition in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

