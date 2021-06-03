<?php

require_once('../../autoload/Autoload.php');

Session::destroy();

Redirect::url('admin/account/login.php');
