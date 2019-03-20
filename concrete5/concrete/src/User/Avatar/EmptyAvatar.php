<?php
namespace Concrete\Core\User\Avatar;

class EmptyAvatar extends StandardAvatar
{

    public function getPath()
    {
        return $this->application['config']->get('concrete.icons.user_avatar.default');
    }

}