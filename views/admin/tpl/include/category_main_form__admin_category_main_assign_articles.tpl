<table cellspacing="0" cellpadding="0" border="0">
<tr>
    <td class="edittext" width="120">
        [{oxmultilang ident="rs-multilang_deactivate_in_this_language"}]
    </td>
    <td class="edittext">
        <input type="hidden" name="editval[oxcategories__rs_multilang_disable]" value="0">
        <input class="edittext" type="checkbox" name="editval[oxcategories__rs_multilang_disable]" value='1' [{if $edit->oxcategories__rs_multilang_disable->value == 1}]checked[{/if}] [{$readonly}]>&nbsp;&nbsp;&nbsp;
    </td>
</tr>
</table>