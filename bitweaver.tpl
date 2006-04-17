{strip}
{include file="bitpackage:kernel/header.tpl"}

{if $print_page ne "y"}

	{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
		<div dir="rtl">
	{/if}

	{include file="bitpackage:kernel/top.tpl"}

	{if $gBitSystem->isFeatureActive( 'site_top_bar' )}
		{include file="bitpackage:kernel/top_bar.tpl"}
	{/if}

	<div id="bitbody">
		{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}
		<div id="bitleft">
			{section name=homeix loop=$l_modules}
				{$l_modules[homeix].data}
			{/section}
		</div>
		{/if}
	  
		<div id="bitmain" class="bit-cols-{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules and $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}3{elseif $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}2l{elseif $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}2r{else}1{/if}">
			{include file="bitpackage:liberty/display_structure.tpl"}

			<a style="padding:0;margin:0;border:0;" name="content"></a>
			{if $pageError}
				<div class="error">{$pageError}</div>
			{/if}

			{include file=$mid}

			{if $gBitSystem->isFeatureActive( 'site_bot_bar' )}
				<div id="bitbottom">
					{include file="bitpackage:kernel/bot_bar.tpl"}
				</div>
			{/if}
		</div>

		{if $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}
		<div id="bitright">
			{section name=homeix loop=$r_modules}
				{$r_modules[homeix].data}
			{/section}
		</div>
		{/if}

	</div> <!-- end #bitbody -->

	{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
		</div>
	{/if}

	{include file="bitpackage:kernel/footer.tpl"}
{/if}
{/strip}
