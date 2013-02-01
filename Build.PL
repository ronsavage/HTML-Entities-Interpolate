use Module::Build;

Module::Build -> new
(
 module_name	=> 'HTML::Entities::Interpolate',
 license		=> 'artistic_2',
 dist_abstract  => 'Call HTML::Entities::encode_entities, via a hash, within a string',
 dist_author	=> 'Ron Savage <ron@savage.net.au>',
 build_requires	=>
 {
	 Test::More=> 0,
#	 Test::Pod  => 1.45, # Make it optional. See t/pod.t
 },
 configure_requires =>
 {
	 Module::Build => 0.3800,
 },
 requires	=>
 {
	 HTML::Entities => 0,
	 Tie::Function  => 0,
 },
) -> create_build_script();
