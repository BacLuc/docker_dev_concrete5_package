<?php

namespace Concrete\Attribute\Select;

use Concrete\Core\Foundation\Object;
use Gettext\Translations;
use Loader;

class Option extends Object
{

    public function __construct($ID, $value, $displayOrder, $usageCount = false, $akID = null)
    {
        $this->ID = $ID;
        $this->value = $value;
        $this->th = Loader::helper('text');
        $this->displayOrder = $displayOrder;
        $this->usageCount = $usageCount;
        $this->akID = $akID;
    }

    public function getAttributeKeyID()
    {
        return $this->akID;
    }

    public function getSelectAttributeOptionID() { return $this->ID; }

    public function getSelectAttributeOptionUsageCount() { return $this->usageCount; }

    public function getSelectAttributeOptionValue($sanitize = true)
    {
        if (!$sanitize) {
            return $this->value;
        } else {
            return $this->th->specialchars($this->value);
        }
    }

    /** Returns the display name for this select option value (localized and escaped accordingly to $format)
     * @param string $format = 'html'
     *    Escape the result in html format (if $format is 'html').
     *    If $format is 'text' or any other value, the display name won't be escaped.
     * @return string
     */
    public function getSelectAttributeOptionDisplayValue($format = 'html')
    {
        $value = tc('SelectAttributeValue', $this->getSelectAttributeOptionValue(false));
        switch ($format) {
            case 'html':
                return h($value);
            case 'text':
            default:
                return $value;
        }
    }

    public function getSelectAttributeOptionDisplayOrder() { return $this->displayOrder; }

    public function getSelectAttributeOptionTemporaryID() { return $this->tempID; }

    public function __toString() { return $this->value; }

    public static function add($ak, $option, $isEndUserAdded = 0)
    {
        $db = Loader::db();
        $th = Loader::helper('text');
        // this works because displayorder starts at zero. So if there are three items, for example, the display order of the NEXT item will be 3.
        $displayOrder =
            $db->GetOne('SELECT count(ID) FROM atSelectOptions WHERE akID = ?', array($ak->getAttributeKeyID()));

        $v = array($ak->getAttributeKeyID(), $displayOrder, $th->sanitize($option), $isEndUserAdded);
        $db->Execute('INSERT INTO atSelectOptions (akID, displayOrder, value, isEndUserAdded) VALUES (?, ?, ?, ?)', $v);

        return Option::getByID($db->Insert_ID());
    }

    public function setDisplayOrder($num)
    {
        $db = Loader::db();
        $db->Execute('UPDATE atSelectOptions SET displayOrder = ? WHERE ID = ?', array($num, $this->ID));
    }

    public static function getByID($id)
    {
        $db = Loader::db();
        $row = $db->GetRow("SELECT ID, displayOrder, value, akID FROM atSelectOptions WHERE ID = ?", array($id));
        if (isset($row['ID'])) {
            $obj = new Option($row['ID'], $row['value'], $row['displayOrder'], null, $row['akID']);
            return $obj;
        }
    }

    public static function getByValue($value, $ak = false)
    {
        $db = Loader::db();
        if (is_object($ak)) {
            $row = $db->GetRow("SELECT ID, displayOrder, akID, value FROM atSelectOptions WHERE value = ? AND akID = ?",
                array($value, $ak->getAttributeKeyID()));
        } else {
            $row =
                $db->GetRow("SELECT ID, displayOrder, akID, value FROM atSelectOptions WHERE value = ?", array($value));
        }
        if (isset($row['ID'])) {
            $obj = new Option($row['ID'], $row['value'], $row['displayOrder'], null, $row['akID']);
            return $obj;
        }
    }

    public function delete()
    {
        $db = Loader::db();
        $db->Execute('DELETE FROM atSelectOptions WHERE ID = ?', array($this->ID));
        $db->Execute('DELETE FROM atSelectOptionsSelected WHERE atSelectOptionID = ?', array($this->ID));
    }

    public function saveOrCreate($ak)
    {
        if ($this->tempID != false || $this->ID == 0) {
            return Option::add($ak, $this->value);
        } else {
            $db = Loader::db();
            $th = Loader::helper('text');
            $db->Execute('UPDATE atSelectOptions SET value = ? WHERE ID = ?',
                array($th->sanitize($this->value), $this->ID));
            return Option::getByID($this->ID);
        }
    }

    public static function exportTranslations()
    {
        $translations = new Translations();
        $db = \Database::get();
        $r = $db->Execute('SELECT ID FROM atSelectOptions ORDER BY ID ASC');
        while ($row = $r->FetchRow()) {
            $opt = static::getByID($row['ID']);
            $translations->insert('SelectAttributeValue', $opt->getSelectAttributeOptionValue(false));
        }
        return $translations;
    }

}
