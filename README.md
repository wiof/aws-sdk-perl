aws-sdk-perl
============

Attempt to build a complete AWS SDK in Perl

This project is attempting to build an entire AWS SDK from the information
that is stored in other AWS SDKs. Other AWS SDKs have a "data-driven" approach,
meaning that the definitions for the method calls are stored in a data structure
describing input and output parameters.

The project is actually generating all of it's classes from botocore

Project info:

Travis CI status: [![Build Status](https://travis-ci.org/pplu/aws-sdk-perl.svg?branch=master)](https://travis-ci.org/pplu/aws-sdk-perl)

Version on CPAN: [![CPAN version](https://badge.fury.io/pl/Paws.svg)](https://badge.fury.io/pl/Paws)


Installation
============

If you want to install and use Paws then just install it via cpan, cpanm, carton or the likes. If you want to contribute code: read on

```
cpanm Paws
```

```
echo "requires 'Paws';" >> cpanfile
carton install

carton exec my_script_that_uses_paws
```

Development setup
============

If you want to develop a feature, or contribute code in some way, you need a development setup. This is done by cloning
the repo into a local directory.

```
# Clone the repo. For what it's worth, you can clone from a fork too :)
git clone https://github.com/pplu/aws-sdk-perl.git
cd aws-sdk-perl
```

With carton you can install all the dependencies needed in a local environment, so you can play around with dependencies without
affecting the system libraries. The cpanfile is used to track the dependencies needed.

It's possible that you need -dev libraries for compiling some of these modules. These packages are: 

* In Debian/Ubuntu:

```
sudo apt-get install libxml2-dev libssl-dev
```

* In Red Hat/CentOS:

```
sudo yum install libxml2-devel openssl-devel
```

* In Mac OS X:

```
brew install openssl
```

If yo are using Mac OS X - El Capitan(10.11) you will probably need to force the link of the openssl header to /usr/local:

```
brew link openssl --force
```

And now tell carton to install the dependecies in a local lib

```
carton install
# drop into a shell so perl can always find the local libraries
carton exec $SHELL -l
```

Now we'll pull the paws-maintained fork of boto (so we can generate the SDK)

```
make pull-other-sdks
```

Now we're ready to code away! Happy hacking.

Organization
============

builder-lib: Contains classes that convert the botocore definitions into perl classes. 

auto-lib: Contains the auto-generated classes. Changes to code in this directory
will be overwritten, so only commit autogenerated code; never handwritten code (see "Generating API").

Changes that fix something in auto-lib are welcome, but cannot be applied directly, since they will be
overwritten. Usually, they indicate some kind of general problem with other APIs, so the 
problem has to be fixed generically.

lib: Contains roles and classes that the auto-generated classes use to call the API,
sign requests, handle responses, etc.

Generating API
============

Note: This step is not necessary if you want to try out the SDK. We commit in "auto-lib"
the classes generated by the definitions to which the "botocore" submodule points to. If you're
not developing the SDK, go directly to the "Trying it out" step :)

Execute command make pull-other-sdks This will do a git pull of some official AWS sdks
that are data-driven, and used to generate the SDK.

To generate the API for a given API call: 
```
perl -I builder-lib builder-bin/generate-paws-classes --file botocore/botocore/data/SERVICE/DATE/service-2.json
```

This will generate file(s) in auto-lib.

To generate all the APIs:

```
make gen-classes
```

Perl versions
============

The SDK is targeted at modern Perl versions. Since a new perl gets released every year, distributions perl tend to lag behind, so 
support for perl versions on any modern, widespread distribution is our target.
Vert old versions may work, but no intention to support them is made. You can always install a modern version of perl with perlbrew or
plenv in a breeze. We're running the test cases on Travis for all "supported" perl versions. If you want to support a lower version,
you can contribute back. Acceptance of patches for older versions of Perl won't mean that the compatibility will be maintained
long-term, although it will be tried :).

Dependencies
============

Dependencies are versioned in a cpanfile. If you have carton, just execute 'carton install' in the sdk directory, and all dependencies
will be pulled in automatically into a local library path. After that use 'carton exec ...' to execute your scripts.

If you add a dependency, just add it to the cpanfile file. There are three sections:

 - the general section is for dependencies that are needed only in runtime
 - the test section is for dependecies needed to run the test suite
 - the develop section is for dependencies needed for developers

carton install installs all dependencies in all sections (after all, we're in developer mode here) 

Packaging
============

Packaging is managed with Dist::Zilla. running dzil build will make a tar.gz suitable for uploading to CPAN

Trying it out
============

Each class for each API can be constructed in the following way:

Create a Perl script (myscript.pl)

```
#!/usr/bin/env perl

use Paws;
use Data::Printer;

my $iam = Paws->service('IAM');

my $summary = $iam->GetAccountSummary;
p $summary->SummaryMap;
```

also take a look at the CLI utility (see below) for fast testing)

Credentials
============

See MetaCPAN https://metacpan.org/pod/Paws#AUTHENTICATION

or

```
perldoc Paws
```

Status
================

Don't consider the SDK as "stable" code. There is a lot of experimenting going on. That said,
people are using it in production, so changes to the way you call APIs, although not guaranteed, are
not prone to change because they are autogenerated. Expect changes around the way you obtain
service classes, transmit credentials, etc. Look at the TODO for expected changes to come.

As of 2015-02 I'm documenting breaking changes in the Changes file. API changes that break stuff
will be documented there. Please read the Changes file before updating your git clone.

Using the SDK in your code
================

Although the code isn't considered stable yet, it works, and more than one person is using it 
already. I recommend you to using a cpanfile, and bundling Paws with carton bundle

Supported AWS Services
================

Take a look at https://metacpan.org/pod/Paws#SUPPORTED-SERVICES

If a service is not supported, it will warn on construction with an explicit "non supported API" 
message. Basically all query and json services are supported. RestXML and RestJSON services are in the coming.

Documentation
================
All services get auto-generated POD documentation. perldoc a file to take a look at the documentation.

CLI utility
================
Paws comes with a command-line utility to exercise the SDK. Just like Paws is the namespace
for the SDK, "paws" (in /bin) is the cli utility. It's quite rudimentary, but think of it as
a quick way to try out calling services. Just call:

```
paws
```

to list all services. If a service isn't supported yet, it will die explicitly advising you that
Paws doesn't support that service yet.

```
paws EC2 --region eu-west-1 DescribeInstances
```

Parameters needed in for DescribeInstances can be passed as a list of parameters (see https://metacpan.org/pod/ARGV::Struct) for complete
documentation of how to pass parameters via command line.

```
paws EC2 --region eu-west-1 DescribeInstances Parameter1: ValueForParameter1 ListParameter: [ V1 V2 ] ComplexParam { Key1 Value1 Key2 Value 2 }
```

License
================

This code is distributed under the Apache v2 License

Thanks
================
Luis Alberto Gimenez (@agimenez) for 
 - The git-fu cleaning up the "pull other sdks" code
 - Credential Providers code
 - Fixes for users that have no HOME env variable
 - FileCaller to fully mock responses

Srinvas (@kidambisrinivas) for testing, bug reporting and fixing

juair10 for corrections and testing

CHORNY for CPAN and cpanfile packaging corrections

Iñigo Tejedor for service endpoint resolution based on rules

codehead for helping fix SQS Queue Maps

mbartold for helping fix SQS MessageBatch functionality

coreymayer for reporting bug in RestXmlCaller

arc (Aaron Crane) for documentation patches

dtikhonov for LWP Caller and bug reporting/fixing

vivus-ignis for DynamoDB bug reporting and test scripts for DynamoDB

karenetheridge for bug reporting, pull requests and help

ioanrogers for fixing unicode issues in tests

ilmari for fixing issues with timestamps in Date and X-Amz-Date headers

stevecaldwell77 for contributing support for temporary credentials in S3

Gimpson for contributing documentation fixes

Roger Pettett for testing and contributing fixes for tests on MacOSX

Henri Yandell for help with licensing issues

Oriol Soriano (@ureesoriano) for contribution to API builders

H. Daniel Cesario (@maneta) for devel setup instructions on RH and MacOSX

Glen van Ginkel for contributions to get S3 working

Javier Arellano for discovering Tagging bug

Ioan Rogers for contributing AssumeRoleWithSAML with ADFS auth example

Miquel Soriano for reporting a bug with DescribeAutoScalingGroups
