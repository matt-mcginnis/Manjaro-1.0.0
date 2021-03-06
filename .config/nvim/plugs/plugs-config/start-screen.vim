""""""""""""""""""""""""""""""
""" Startify Configuration """
""""""""""""""""""""""""""""""

let g:startify_session_dir = '~/.config/nvim/sessions'

let g:startify_lists = [
			\ { 'type': 'files', 		'header': [' 	Files'] 	},
			\ { 'type': 'dir', 			'header': [' 	Current Directory'] 	},
			\ { 'type': 'sessions', 	'header': [' 	Sessions'] 	}
			\ ]

let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enables_special = 0

let g:startify_custom_header = [
			\'   ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓',
        	\'   ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒',
        	\'  ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░',
        	\'  ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ',
        	\'  ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒',
        	\'  ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░',
        	\'  ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░',
        	\'     ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ',
        	\'           ░    ░  ░    ░ ░        ░   ░         ░   ',
        	\'                                  ░ 				   '
	  \ ]

nmap <leader>st :Startify<CR>
