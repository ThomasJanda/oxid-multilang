<?php

namespace rs\multilang\Application\Model;

class Category extends Category_parent
{

    /**
     * Returns SQL select string with checks if items are available
     *
     * @param bool $blForceCoreTable forces core table usage (optional)
     *
     * @return string
     */
    public function getSqlActiveSnippet($blForceCoreTable = null)
    {
        $sQ = parent::getSqlActiveSnippet($blForceCoreTable);

        $sTable = $this->getViewName($blForceCoreTable);

        // check if article is deactivated
        $sQ .= (strlen($sQ) ? ' and ' : '') . " $sTable.rs_multilang_disable = '0' ";

        return $sQ;
    }



    /**
     * returns the visibility of a category, handles hidden and empty categories
     *
     * @return bool
     */
    public function getIsVisible()
    {
        $blVisible = parent::getIsVisible();
        if($blVisible)
        {
            if($this->oxcategories__rs_multilang_disable->value=="1")
                $blVisible=false;
        }
        return $blVisible;
    }

}