
package Paws::S3::GetBucketVersioning;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Bucket' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketVersioning');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?versioning');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketVersioningOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketVersioningOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str






=cut

