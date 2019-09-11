<?php

namespace rs\multilang\Application\Model;

class Article extends Article_parent
{

    /**
     * Returns part of sql query used in active snippet. Query checks
     * if product "oxactive = 1". If config option "blUseTimeCheck" is TRUE
     * additionally checks if "oxactivefrom < current data < oxactiveto"
     *
     * @param bool $blForceCoreTable force core table usage
     *
     * @return string
     */
    public function getActiveCheckQuery($blForceCoreTable = null)
    {
        $sQ = parent::getActiveCheckQuery($blForceCoreTable);

        $sTable = $this->getViewName($blForceCoreTable);

        // check if article is deactivated
        $sQ .= (strlen($sQ) ? ' and ' : '') . " $sTable.rs_multilang_disable = '0' ";

        return $sQ;
    }

}