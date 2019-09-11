[{if $listitem->blacklist == 1}]
    [{assign var="listclass" value=listitem3}]
[{else}]
    [{assign var="listclass" value=listitem$blWhite}]
[{/if}]
[{if $listitem->getId() == $oxid}]
    [{assign var="listclass" value=listitem4}]
[{/if}]
<td valign="top" class="[{$listclass}]">
    <table cellspacing="0" cellpadding="0" border="0">
        <tr>
            <td title="[{oxmultilang ident="rs-multilang_active"}]" class="[{if $listitem->oxcategories__oxactive->value == 1}] active[{/if}]" style="min-width:17px; background-color:transparent; border:0 !important;"><div class="listitemfloating">&nbsp;</div></td>
            <td title="[{oxmultilang ident="rs-multilang_not_hidden"}]" class="[{if $listitem->oxcategories__oxhidden->value == 0}] active[{/if}]" style="min-width:17px; background-color:transparent; border:0 !important;"><div class="listitemfloating">&nbsp;</div></td>
            <td title="[{oxmultilang ident="rs-multilang_not_deactivated_in_this_language"}]" class="[{if $listitem->oxcategories__rs_multilang_disable->value != 1}] active[{/if}]" style="min-width:17px; background-color:transparent; border:0 !important;"><div class="listitemfloating">&nbsp;</div></td>
        </tr>
    </table>
</td>
<td valign="top" class="[{$listclass}]" height="15" align="center">
    <div class="listitemfloating"><a
                href="Javascript:top.oxid.admin.editThis('[{$listitem->oxcategories__oxid->value}]');"
                class="[{$listclass}]">[{$listitem->oxcategories__oxsort->value}]</a></div>
</td>
<td valign="top" class="[{$listclass}]" height="15">
    <div class="listitemfloating"><a
                href="Javascript:top.oxid.admin.editThis('[{$listitem->oxcategories__oxid->value}]');"
                class="[{$listclass}]">[{$listitem->oxcategories__oxtitle->value}]</a></div>
</td>
<td class="[{$listclass}]">
    [{if !$readonly}]
    [{include file="include/category_list_item_actions.tpl"}]
    [{/if}]
</td>
