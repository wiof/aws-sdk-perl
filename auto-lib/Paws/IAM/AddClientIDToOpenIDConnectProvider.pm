
package Paws::IAM::AddClientIDToOpenIDConnectProvider;
  use Moose;
  has ClientID => (is => 'ro', isa => 'Str', required => 1);
  has OpenIDConnectProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddClientIDToOpenIDConnectProvider');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::AddClientIDToOpenIDConnectProvider - Arguments for method AddClientIDToOpenIDConnectProvider on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddClientIDToOpenIDConnectProvider on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method AddClientIDToOpenIDConnectProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddClientIDToOpenIDConnectProvider.

As an example:

  $service_obj->AddClientIDToOpenIDConnectProvider(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientID => Str

The client ID (also known as audience) to add to the IAM OpenID Connect
provider.



=head2 B<REQUIRED> OpenIDConnectProviderArn => Str

The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC)
provider to add the client ID to. You can get a list of OIDC provider
ARNs by using the ListOpenIDConnectProviders action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddClientIDToOpenIDConnectProvider in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

