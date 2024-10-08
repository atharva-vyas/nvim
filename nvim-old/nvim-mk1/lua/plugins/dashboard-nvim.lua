return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	config = function()
		require('dashboard').setup {
			config = {
				shortcut = {},
				header = {
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⢳⠈⢳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠟⢡⠏⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⠀⡇⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⢸⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⠀⢰⠃⠀⣼⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣸⣇⠀⢸⠀⠀⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⣾⣴⣾⡭⠿⣿⣦⠀⠀⠀⠀⠀⠀⠀⣾⡯⠿⢭⣷⣬⣇⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⠀⣰⠟⠉⢀⡴⠚⠉⠁⠀⠀⠀⠀⠀⠀⠀⠈⠉⠳⢄⠈⠙⢿⡆⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠁⣰⠏⠀⢠⠋⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠈⢳⡀⠀⠻⡄⠘⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠁⢠⠃⠀⢠⠇⠀⠀⢀⣴⠾⣭⣀⣀⣀⣀⣀⡽⢷⣆⡀⠀⠀⢹⡀⠀⢹⡀⠘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡇⠀⡞⠀⠀⣿⣠⣴⣮⣿⠿⣿⠾⢿⣿⣿⣿⡿⢿⣟⢿⣫⢷⡦⣄⣧⠀⠀⣇⠀⢱⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⡇⠀⠀⣯⢓⡽⠊⣡⠞⢁⣴⠾⣿⣿⡛⠳⣤⠈⠳⣌⠓⢭⡻⣿⠀⠀⣿⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢳⠀⠀⠻⡏⢀⡞⠁⣰⢯⣾⡏⣾⢹⣷⣿⣶⢷⡄⠘⢦⠀⣹⠋⠀⢀⡇⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⣠⡟⠳⣦⣼⣇⠀⠈⢧⡀⠀⠘⠻⢤⣤⣇⣤⡶⢦⣼⣶⣤⡶⣶⣤⣽⣠⡴⠟⠁⠀⢀⡾⠀⠀⣼⣠⠴⠚⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⣴⢃⣶⣿⣿⣿⣿⢷⣄⠈⠛⢦⣄⣀⠀⠙⡏⢛⡷⠟⣻⢿⡛⢳⣾⠋⡸⠋⢀⣀⣠⠶⠋⠀⣠⣾⣿⣿⣻⣾⣆⡹⣄⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⢠⡜⠁⢸⣿⣿⣿⣿⣿⠈⢻⡶⢦⣄⣈⠉⠙⠓⠿⣄⢿⣧⣿⣬⡟⣾⣿⣴⠟⠛⠉⠉⣀⣤⠴⣾⠋⠀⣿⣿⣿⡿⣿⠃⠈⢦⡀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⣰⠛⠒⠤⣬⣛⠷⠿⠟⠃⠀⠀⢹⣾⠷⠛⠛⠛⠒⠒⠚⠛⠒⠬⠭⠥⠒⠛⠒⠒⠚⠛⠛⠓⢾⣶⠋⠀⠀⠘⠓⠻⡯⣩⣤⠴⠒⠳⡄⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠛⠻⠶⢶⣤⡈⠑⢦⡀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡏⠀⠀⠀⠀⢀⡴⠋⣡⣴⡶⠿⠟⠇⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠈⣹⣧⡀⠱⡄⠀⠀⢠⣏⣓⣦⠤⢄⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡤⣤⣖⣚⣽⠀⠀⠀⣠⠏⢠⡾⡋⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠿⢷⡀⢻⠀⠀⡾⠃⣐⣿⣿⣿⣶⣶⣭⣽⣭⡭⠥⢤⣮⣿⣿⣿⣶⣿⣿⣷⡀⠹⣧⠀⢠⠃⢠⡿⠷⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⢀⣾⡤⠖⠚⣧⠀⡇⣸⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⣿⡆⣸⢀⣿⠓⠲⢬⣧⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⣞⣁⣠⣤⠴⢻⡄⣷⠟⢷⡼⣏⢿⣿⣿⣿⣿⣿⣿⣷⡆⠀⣶⡿⣿⣿⣿⣿⣿⣿⠟⡿⢱⠟⢻⡇⢸⡟⠦⣤⣤⣙⣦⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⡼⠋⠁⠀⢀⣠⢿⣧⡇⢀⠈⠙⠊⠀⠺⠿⠿⠿⠟⢡⣿⢱⣿⠹⣿⡙⠻⠿⠿⠿⠂⠈⠐⠉⠀⠀⢳⣸⢷⣄⠀⠀⠈⠙⣆⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⣼⣡⠤⠖⠛⠋⠀⣼⣿⣄⠸⣦⣄⣀⠀⠀⠀⢤⣤⣶⠟⣳⣿⣿⣧⡙⠿⣶⣤⠄⠀⠀⠀⣀⣠⡾⢁⣸⣿⣆⠈⠙⠓⠲⠤⣼⣆⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⢀⡾⠋⠀⢀⣀⣀⣴⣾⣿⣿⣿⣷⣬⣿⣿⣿⣷⣦⣄⠙⡇⠸⣿⣿⠻⣿⣿⠀⠻⠁⣤⣶⣿⣿⣿⣯⣴⣾⣿⣿⣿⣷⣤⣀⣀⡀⠈⠙⢆⠀⠀⠀⠀   ",
					"	⠀⠀⢀⣾⠗⠒⠉⢩⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⠃⠀⠁⠀⠈⠉⠀⠉⠁⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡉⠙⠓⠾⣧⠀⠀⠀   ",
					"	⠀⣰⠏⠀⠀⢀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣼⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⡀⠀⠈⠳⡄⠀   ",
					"	⣰⣧⠶⠞⠋⠛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿⣿⣽⣿⡇⡏⢸⠀⠀⠈⡊⡇⢸⣽⣿⣿⡏⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠋⠙⠳⢦⣽⡀   ",
					"	⣿⡁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⢿⣿⣿⡇⠘⣿⣿⣻⣧⣷⣼⡤⣤⣴⣷⣧⡼⢻⣿⣿⠁⣸⣿⣿⡿⠛⠛⠛⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⣨⣿   ",
					"	⠈⠓⢦⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣄⠹⣿⣝⠾⢼⣟⡄⡀⣼⣼⡼⠗⣫⣿⠃⣴⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⠾⠛⠁   ",
					"	⠀⠀⠀⠀⠉⠉⠙⠒⠒⠶⠤⢤⣤⣄⣀⣀⡀⠀⠙⠿⣿⣦⡙⢿⣷⠶⠂⠁⠭⠉⠰⢶⢾⠟⢁⣾⡿⠟⠁⠀⢀⣀⣀⣤⣤⡤⠤⠶⠒⠒⠋⠉⠁⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠉⠻⢦⣽⣄⡀⢀⣀⡀⢀⣴⣶⡶⠋⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
					"	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
				},
				footer = { "ajshdakjsdhkajdh" },
			},
		}
	end,
	dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
