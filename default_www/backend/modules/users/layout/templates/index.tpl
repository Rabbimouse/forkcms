{include:file="{$BACKEND_CORE_PATH}/layout/templates/header.tpl"}

	{option:report}
		<div class="report fadeOutAfterMouseMove">{$reportMessage}</div>
		{option:hilight}
		<script type="text/javascript">
			var hilightId = '#{$hilight}';
		</script>
		{/option:hilight}
	{/option:report}

	<h2>{$msgHeaderIndex|ucfirst}</h2>
	<a href="{$var|geturl:add}" title="{$lblAdd}">{$lblAdd}</a>
	
	<div>
	{option:datagrid}{$datagrid}{/option:datagrid}
	{option:!datagrid}{$msgNoItems}{/option:!datagrid}
	</div>

{include:file="{$BACKEND_CORE_PATH}/layout/templates/footer.tpl"}