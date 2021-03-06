
package Paws::CognitoIdp::ListUsers;
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has Limit => (is => 'ro', isa => 'Int');
  has PaginationToken => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has UserStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListUsersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUsers - Arguments for method ListUsers on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsers on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method ListUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsers.

As an example:

  $service_obj->ListUsers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AttributesToGet => ArrayRef[Str]

The attributes to get from the request to list users.



=head2 Limit => Int

The limit of the request to list users.



=head2 PaginationToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for which you want to list users.



=head2 UserStatus => Str

The user status. Can be one of the following:

=over

=item * UNCONFIRMED - User has been created but not confirmed.

=item * CONFIRMED - User has been confirmed.

=item * ARCHIVED - User is no longer active.

=item * COMPROMISED - User is disabled due to a potential security
threat.

=item * UNKNOWN - User status is not known.

=back


Valid values are: C<"UNCONFIRMED">, C<"CONFIRMED">, C<"ARCHIVED">, C<"COMPROMISED">, C<"UNKNOWN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsers in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

