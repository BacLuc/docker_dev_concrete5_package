<?php
namespace Concrete\Core\User\Event;
use Concrete\Core\User\UserInfo as ConcreteUserInfo;
use Symfony\Component\EventDispatcher\Event as AbstractEvent;

class UserInfo extends AbstractEvent {

	protected $ui;

	public function __construct(ConcreteUserInfo $ui) {
		$this->ui = $ui;
	}

	public function getUserInfoObject() {
		return $this->ui;
	}

}
