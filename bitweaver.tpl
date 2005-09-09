{include file="bitpackage:kernel/header.tpl"}

{if $print_page ne "y"}
	<a class="skip" style="position:absolute;top:0;left:-999em;width:0;height:0;" href="#content">{tr}Skip Navigation{/tr}</a>

{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
<div dir="rtl">
{/if}

	{include file="bitpackage:kernel/top.tpl"}

	{if $gBitSystem->isFeatureActive( 'feature_top_bar' )}
		{include file="bitpackage:kernel/top_bar.tpl"}
	{/if}

<div id="tikibody">

	<div id="tikimain">
		{include file="bitpackage:liberty/display_structure.tpl"}

		<a style="padding:0;margin:0;border:0;" name="content"></a>
		{if $pageError}
		<div class="error">{$pageError}</div>
		{/if}

		{include file=$mid}
	</div>

	{if $gBitSystem->isFeatureActive( 'feature_left_column' ) && $l_modules && !$gHideModules}
	<div id="bitleft">
		{section name=homeix loop=$l_modules}
		{$l_modules[homeix].data}
		{/section}
	</div>
	{/if}
  
	{if $gBitSystem->isFeatureActive( 'feature_right_column' ) && $r_modules && !$gHideModules}
	<div id="bitright">
		{section name=homeix loop=$r_modules}
		{$r_modules[homeix].data}
		{/section}
	</div>
	{/if}

	{if $gBitSystem->isFeatureActive( 'feature_bot_bar' )}
	<div id="tikibottom">
		{include file="bitpackage:kernel/bot_bar.tpl"}
	</div>
	{/if}

</div> <!-- end #tikibody -->

{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
</div>
{/if}

{include file="bitpackage:kernel/footer.tpl"}

{/if}
