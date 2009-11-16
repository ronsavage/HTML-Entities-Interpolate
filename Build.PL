use Module::Build;

Module::Build -> new
(
	module_name	=> 'HTML::Entities::Interpolate',
	license		=> 'artistic',
	dist_author	=> 'Ron Savage <ron@savage.net.au>',
	build_requires	=>
	{
		Test::More	=> 0,
		Test::Pod	=> 0,
	},
	requires	=>
	{
		HTML::Entities	=> 0,
		Tie::Function	=> 0,
	},
) -> create_build_script();
