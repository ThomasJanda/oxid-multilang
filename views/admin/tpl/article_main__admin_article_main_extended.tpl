<tr>
    <td class="edittext">
        [{oxmultilang ident="rs-multilang_deactivate_in_this_language"}]
    </td>
    <td class="edittext">
        <input type="hidden" name="editval[oxarticles__rs_multilang_disable]" value="0">
        <input class="edittext" type="checkbox" name="editval[oxarticles__rs_multilang_disable]" value='1' [{if $edit->oxarticles__rs_multilang_disable->value == 1}]checked[{/if}] [{$readonly}]>
    </td>
</tr>