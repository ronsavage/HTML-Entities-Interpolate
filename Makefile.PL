use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
		'AUTHOR' => 'Ron Savage (ron@savage.net.au)',
		'ABSTRACT' => 'Call HTML::Entities::encode_entities, via a hash, within a string',
    ) : (),
	clean			=>
	{
		FILES		=> 'blib/* Makefile MANIFEST HTML-Entities-Interpolate-*'
	},
	dist			=>
	{
		COMPRESS	=> 'gzip',
		SUFFIX		=> 'gz'
	},
	DISTNAME		=> 'HTML-Entities-Interpolate',
	NAME			=> 'HTML::Entities::Interpolate',
	PL_FILES		=> {},
	PREREQ_PM		=>
	{
		HTML::Entities	=> 0,
		Test::More		=> 0,
		Test::Pod		=> 0,
		Tie::Function	=> 0,
	},
	VERSION_FROM	=> 'lib/HTML/Entities/Interpolate.pm',
);
