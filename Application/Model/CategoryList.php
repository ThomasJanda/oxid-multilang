<?php

namespace rs\multilang\Application\Model;

class CategoryList extends CategoryList_parent
{

    /**
     * Get activity related fields
     *
     * @param string $tableName
     *
     * @return string SQL snippet
     */
    protected function getActivityFieldsSql($tableName)
    {
        $sQ = parent::getActivityFieldsSql($tableName);
        return $sQ.=",$tableName.rs_multilang_disable as rs_multilang_disable_ppremove";
    }


    /**
     * Category list postprocessing routine, responsible for removal of inactive of forbidden categories, and subcategories.
     */
    protected function _ppRemoveInactiveCategories()
    {
        parent::_ppRemoveInactiveCategories();

        // Collect all items which must be remove
        $aRemoveList = [];
        foreach ($this->_aArray as $sId => $oCat) {
            if ($oCat->oxcategories__rs_multilang_disable_ppremove->value) {
                if (!isset($aRemoveList[$oCat->oxcategories__oxrootid->value])) {
                    $aRemoveList[$oCat->oxcategories__oxrootid->value] = [];
                }
                $aRemoveList[$oCat->oxcategories__oxrootid->value][$oCat->oxcategories__oxleft->value] = $oCat->oxcategories__oxright->value;
                unset($this->_aArray[$sId]);
            } else {
                unset($oCat->oxcategories__rs_multilang_disable_ppremove);
            }
        }

        // Remove collected item's children from the list too (in the ranges).
        foreach ($this->_aArray as $sId => $oCat) {
            if (isset($aRemoveList[$oCat->oxcategories__oxrootid->value]) &&
                is_array($aRemoveList[$oCat->oxcategories__oxrootid->value])
            ) {
                foreach ($aRemoveList[$oCat->oxcategories__oxrootid->value] as $iLeft => $iRight) {
                    if (($iLeft <= $oCat->oxcategories__oxleft->value)
                        && ($iRight >= $oCat->oxcategories__oxleft->value)
                    ) {
                        // this is a child in an inactive range (parent already gone)
                        unset($this->_aArray[$sId]);
                        break 1;
                    }
                }
            }
        }
    }

}