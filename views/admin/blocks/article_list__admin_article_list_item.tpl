[{if $listitem->blacklist == 1}]
    [{assign var="listclass" value=listitem3}]
[{else}]
    [{assign var="listclass" value=listitem$blWhite}]
[{/if}]
[{if $listitem->oxarticles__oxid->value == $oxid}]
    [{assign var="listclass" value=listitem4}]
[{/if}]
<td valign="top" class="[{$listclass}]" height="15">
    <table cellspacing="0" cellpadding="0" border="0">
        <tr>
            <td title="[{oxmultilang ident="rs-multilang_active"}]" class="[{if $listitem->oxarticles__oxactive->value == 1}] active[{/if}]" style="min-width:17px; background-color:transparent; border:0 !important;"><div class="listitemfloating">&nbsp;</div></td>
            <td title="[{oxmultilang ident="rs-multilang_not_hidden"}]" class="[{if $listitem->oxarticles__oxhidden->value == 0}] active[{/if}]" style="min-width:17px; background-color:transparent; border:0 !important;"><div class="listitemfloating">&nbsp;</div></td>
            <td title="[{oxmultilang ident="rs-multilang_not_deactivated_in_this_language"}]" class="[{if $listitem->oxarticles__rs_multilang_disable->value != 1}] active[{/if}]" style="min-width:17px; background-color:transparent; border:0 !important;"><div class="listitemfloating">&nbsp;</div></td>
        </tr>
    </table>
</td>
<td valign="top" class="[{$listclass}]">
    <div class="listitemfloating"><a
                href="Javascript:top.oxid.admin.editThis('[{$listitem->oxarticles__oxid->value}]');"
                class="[{$listclass}]">[{$listitem->oxarticles__oxartnum->value}]</a></div>
</td>
<td valign="top" class="[{$listclass}]" height="15">
    <div class="listitemfloating">&nbsp;<a
                href="Javascript:top.oxid.admin.editThis('[{$listitem->oxarticles__oxid->value}]');"
                class="[{$listclass}]">[{$listitem->pwrsearchval|oxtruncate:200:"..":false}]</a></div>
</td>
<td valign="top" class="[{$listclass}]">
    <div class="listitemfloating"><a
                href="Javascript:top.oxid.admin.editThis('[{$listitem->oxarticles__oxid->value}]');"
                class="[{$listclass}]">[{$listitem->oxarticles__oxshortdesc->value|strip_tags|oxtruncate:45:"..":true}]
        </a></div>
</td>
<td class="[{$listclass}]">
    [{include file="include/article_list_actions.tpl"}]
</td>