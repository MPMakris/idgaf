data:extend{
	{
		name = 'req-quickstart-extra-cheese',
		type = 'bool-setting',
		setting_type = 'startup',
		default_value = false,
    order = 'a'
	},
	{
		name = 'req-quickstart-recipes',
		type = 'bool-setting',
		setting_type = 'startup',
		default_value = false,
    order = 'b'
	},
	{
		name = 'req-quickstart-cost',
		type = 'int-setting',
		setting_type = 'startup',
		default_value = 10,
		minimum_value = 1,
		maximum_value = 100,
		order = 'c'
	},
}