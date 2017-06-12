<?php

/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/general.php
 */


return array(

  '*' => array(
    'omitScriptNameInUrls' => true,
    'defaultImageQuality' => 90,
    'maxUploadFileSize' => 33554432,
  ),
    'localhost' => array(
    'devMode' => true,
    'siteUrl' => 'http://localhost:8888/',

    /* Environment Variables */
    'environmentVariables' => array(
      'baseAssetUrl'  => 'http://localhost:8888',
      'baseAssetPath' => '/users/aezzell/Documents/websites/hanour/build',
    )
  )
);



// return array(
//
//   '*' => array(
//     'omitScriptNameInUrls' => true,
//     'defaultImageQuality' => 90,
//     'maxUploadFileSize' => 33554432,
//   ),
//     '138.68.12.58' => array(
//     'devMode' => true,
//     'siteUrl' => 'http://138.68.12.58/',
//
//     /* Environment Variables */
//     'environmentVariables' => array(
//       'baseAssetUrl'  => '//138.68.12.58',
//       'baseAssetPath' => '/var/www/html',
//     )
//   )
// );
