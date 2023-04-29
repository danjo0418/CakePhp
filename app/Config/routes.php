<?php

	Router::connect('/', array('controller' => 'users', 'action' => 'login'));
	Router::connect('/register', array('controller' => 'users', 'action' => 'create'));
	Router::connect('/thankyou', array('controller' => 'users', 'action' => 'thankyou'));

	Router::connect('/profile', array('controller' => 'users', 'action' => 'profile'));
	Router::connect('/edit-profile', array('controller' => 'users', 'action' => 'edit'));

	Router::connect('/message', array('controller' => 'messages', 'action' => 'index'));
	Router::connect('/message/detail/*', array('controller' => 'messages', 'action' => 'detail'));
	Router::connect('/message/create', array('controller' => 'messages', 'action' => 'create'));
	

	CakePlugin::routes();


	require CAKE . 'Config' . DS . 'routes.php';

