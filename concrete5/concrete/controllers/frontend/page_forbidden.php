<?php

namespace Concrete\Controller\Frontend;

use Config;
use Controller;
use User;

class PageForbidden extends Controller
{
    protected $viewPath = '/frontend/page_forbidden';

    public function view()
    {
        $u = new User();
        if (!$u->isRegistered() && Config::get('concrete.permissions.forward_to_login')) { //if they are not logged in, and we show guests the login...
            $this->redirect('/login');
        }
    }
}
