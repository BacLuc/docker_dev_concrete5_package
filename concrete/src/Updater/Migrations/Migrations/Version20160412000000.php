<?php

namespace Concrete\Core\Updater\Migrations\Migrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

class Version20160412000000 extends AbstractMigration
{

    public function up(Schema $schema)
    {
        // background size/position
        \Concrete\Core\Database\Schema\Schema::refreshCoreXMLSchema(array(
            'FileImageThumbnailPaths'
        ));
    }

    public function down(Schema $schema)
    {
    }


}
