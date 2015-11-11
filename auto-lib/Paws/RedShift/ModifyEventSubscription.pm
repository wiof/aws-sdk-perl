
package Paws::RedShift::ModifyEventSubscription;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has Severity => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifyEventSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscriptionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyEventSubscription - Arguments for method ModifyEventSubscription on Paws::RedShift

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyEventSubscription on the 
Amazon Redshift service. Use the attributes of this class
as arguments to method ModifyEventSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyEventSubscription.

As an example:

  $service_obj->ModifyEventSubscription(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  A Boolean value indicating if the subscription is enabled. C<true>
indicates the subscription is enabled


=head2 EventCategories => ArrayRef[Str]

  Specifies the Amazon Redshift event categories to be published by the
event notification subscription.

Values: Configuration, Management, Monitoring, Security


=head2 Severity => Str

  Specifies the Amazon Redshift event severity to be published by the
event notification subscription.

Values: ERROR, INFO


=head2 SnsTopicArn => Str

  The Amazon Resource Name (ARN) of the SNS topic to be used by the event
notification subscription.


=head2 SourceIds => ArrayRef[Str]

  A list of one or more identifiers of Amazon Redshift source objects.
All of the objects must be of the same type as was specified in the
source type parameter. The event subscription will return only events
generated by the specified objects. If not specified, then events are
returned for all objects within the source type specified.

Example: my-cluster-1, my-cluster-2

Example: my-snapshot-20131010


=head2 SourceType => Str

  The type of source that will be generating the events. For example, if
you want to be notified of events generated by a cluster, you would set
this parameter to cluster. If this value is not specified, events are
returned for all Amazon Redshift objects in your AWS account. You must
specify a source type in order to specify source IDs.

Valid values: cluster, cluster-parameter-group, cluster-security-group,
and cluster-snapshot.


=head2 B<REQUIRED> SubscriptionName => Str

  The name of the modified Amazon Redshift event notification
subscription.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyEventSubscription in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

