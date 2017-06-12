<?php

/**
 * Database Configuration
 *
 * All of your system's database configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/db.php
 */

return array(

	// The database server name or IP address. Usually this is 'localhost' or '127.0.0.1'.
	'server' => 'localhost',

	// The name of the database to select.
	'database' => 'hanour',
    // 'database' => 'refugefx_craft',

	// The database username to connect with.
	'user' => 'root',
    // 'user' => 'aezzell',

	// The database password to connect with.
	'password' => 'root',
    // 'password' => 'vLGq}EP9',

	// The prefix to use when naming tables. This can be no more than 5 characters.
	'tablePrefix' => 'craft_',

);


// return array(
//   '*' => array(
//     'tablePrefix' => 'craft',
//   ),
//   '162.243.139.148' => array(
// 		'server' => 'localhost',
// 		'user' => 'aezzell',
// 		'password' => 'vLGq}EP9',
// 		'database' => 'refugefx_craft'
//   )
// );
