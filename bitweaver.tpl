{include file="bitpackage:kernel/header.tpl"}

{if $print_page ne "y"}

{if $gBitSystemPrefs.feature_bidi eq 'y'}
<div dir="rtl">
{/if}

	{include file="bitpackage:kernel/top.tpl"}

	{if $gBitSystemPrefs.feature_top_bar eq 'y'}
		{include file="bitpackage:kernel/top_bar.tpl"}
	{/if}

<div id="tikibody">

	<div id="tikimain">
		{include file="bitpackage:liberty/display_structure.tpl"}

		{if $pageError}
		<div class="error">{$pageError}</div>
		{/if}

		{include file=$mid}
	</div>

	{if $gBitSystemPrefs.feature_left_column eq 'y' && $l_modules && !$gHideModules}
	<div id="bitleft">
		{section name=homeix loop=$l_modules}
		{$l_modules[homeix].data}
		{/section}
	</div>
	{/if}
  
	{if $gBitSystemPrefs.feature_right_column eq 'y' && $r_modules && !$gHideModules}
	<div id="bitright">
		{section name=homeix loop=$r_modules}
		{$r_modules[homeix].data}
		{/section}
	</div>
	{/if}

	{if $gBitSystemPrefs.feature_bot_bar eq 'y'}
	<div id="tikibottom">
		{include file="bitpackage:kernel/bot_bar.tpl"}
	</div>
	{/if}

</div> <!-- end #tikibody -->

{if $gBitSystemPrefs.feature_bidi eq 'y'}
</div>
{/if}

{include file="bitpackage:kernel/footer.tpl"}

{/if}
