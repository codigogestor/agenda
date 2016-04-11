{include file="includes/navmenu.tpl"}

{if $addressPath[1] eq 'list'}


{include file="module-contact/list.tpl"}


{elseif $addressPath[1] eq 'add'}

Novo Contato

{elseif $addressPath[1] eq 'edit'}

Editar Contato

{elseif $addressPath[1] eq 'delete'}

Excluir Contato

{else}

Página não encontrada

{/if}
