<?php
namespace Concrete\Job;

use CollectionAttributeKey;
use Concrete\Core\Page\Search\IndexedSearch;
use FileAttributeKey;
use Loader;
use Page;
use QueueableJob;
use UserAttributeKey;
use ZendQueue\Message as ZendQueueMessage;
use ZendQueue\Queue as ZendQueue;

class IndexSearchAll extends QueueableJob
{

    public $jNotUninstallable = 1;
    public $jSupportsQueue = true;

    protected $indexedSearch;

    public function getJobName()
    {
        return t("Index Search Engine - All");
    }

    public function getJobDescription()
    {
        return t("Empties the page search index and reindexes all pages.");
    }

    public function start(ZendQueue $q)
    {
        $this->indexedSearch = new IndexedSearch();

        $attributes = CollectionAttributeKey::getList();
        $attributes = array_merge($attributes, FileAttributeKey::getList());
        $attributes = array_merge($attributes, UserAttributeKey::getList());
        foreach ($attributes as $ak) {
            $ak->updateSearchIndex();
        }

        $db = Loader::db();
        $db->Execute('truncate table PageSearchIndex');
        $r = $db->Execute(
            'select Pages.cID
            from Pages
                left join CollectionSearchIndexAttributes csia
                    on Pages.cID = csia.cID
            where (ak_exclude_search_index is null or ak_exclude_search_index = 0) and cIsActive = 1'
        );
        while ($row = $r->FetchRow()) {
            $q->send($row['cID']);
        }
    }

    public function finish(ZendQueue $q)
    {
        $db = Loader::db();
        $total = $db->GetOne('select count(*) from PageSearchIndex');
        return t('Index updated. %s pages indexed.', $total);
    }

    public function processQueueItem(ZendQueueMessage $msg)
    {
        $c = Page::getByID($msg->body, 'ACTIVE');
        $cv = $c->getVersionObject();
        if (is_object($cv)) {
            $c->reindex($this->indexedSearch, true);
        }
    }
}