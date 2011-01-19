<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2010 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->
<form name="form1" id="form1" method="post" action="?">
<input type="hidden" name="mode" value="complete" />
<!--{foreach from=$arrForm key=key item=item}-->
<!--{if $key ne "mode" && $key ne "subm"}-->
<input type="hidden" name="<!--{$key|h}-->" value="<!--{$item|h}-->" />
<!--{/if}-->
<!--{/foreach}-->
	<div id="complete">
		<div class="complete-top"></div>
		<div class="contents">
			<div class="message">
				登録が完了致しました。
			</div>
		</div>
		<div class="btn-area-top"></div>
		<div class="btn-area">
			<ul>
				<li><a class="btn-action" href="./customer.php"><span class="btn-next">続けて登録を行う</span></a></li>
			</ul>
		</div>
		<div class="btn-area-bottom"></div>
	</div>
</form>