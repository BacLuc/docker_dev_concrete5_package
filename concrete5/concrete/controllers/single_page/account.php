<?php
namespace Concrete\Controller\SinglePage;
use Concrete\Core\Page\Controller\AccountPageController;
use Page;

class Account extends AccountPageController {

    public function save_complete() {
        $this->set('success', t('Profile updated successfully.'));
        $this->view();
    }

    public function view()
    {
        $c = Page::getCurrentPage();
        $pages = $c->getCollectionChildren();
        $this->set('pages', $pages);
    }
}