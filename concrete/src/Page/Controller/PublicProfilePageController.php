<?php
namespace Concrete\Core\Page\Controller;

use Config;
use PageController as CorePageController;

class PublicProfilePageController extends CorePageController
{

    public function on_start()
    {
        parent::on_start();

        if (!Config::get('concrete.user.profiles_enabled')) {
            $this->replace('/page_not_found');
        }
    }


}
