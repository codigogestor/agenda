{include file="includes/navmenu.tpl"}

{if $addressPath[1] eq 'list'}


{include file="module-contact/list.tpl"}


{elseif $addressPath[1] eq 'add'}

{include file="module-contact/form.tpl"}

{elseif $addressPath[1] eq 'edit'}

{include file="module-contact/form.tpl"}

{elseif $addressPath[1] eq 'delete'}

{include file="module-contact/delete.tpl"}

{else}

{include file="includes/notfound.tpl"}

{/if}
