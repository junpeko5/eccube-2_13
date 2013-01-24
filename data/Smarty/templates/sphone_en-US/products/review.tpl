<!--{include file="`$smarty.const.SMARTPHONE_TEMPLATE_REALDIR`popup_header.tpl" subtitle="Form for customer's opinion (input page)"}-->
<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2012 LOCKON CO.,LTD. All Rights Reserved.
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

<div id="windowarea">
    <h2 class="title">Add comment</h2>
    <p class="windowtext">Please provide your opinions and thoughts regarding the product below.<br />
        Items marked with "<span class="attention">*</span>" are required fields.<br />
        When finished, click the "Confirm" button at the very bottom of the page.</p>
    <form name="form1" method="post" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="confirm" />
        <input type="hidden" name="product_id" value="<!--{$arrForm.product_id|h}-->" />
        <table summary="Form for customer's opinion">
            <tr>
                <th>Product name</th>
                <td><!--{$arrForm.name|h}--></td>
            </tr>
            <tr>
                <th>Poster name<span class="attention">*</span></th>
                <td><span class="attention"><!--{$arrErr.reviewer_name}--></span><input type="text" name="reviewer_name" value="<!--{$arrForm.reviewer_name|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" class="boxHarf text data-role-none" placeholder="Poster name" style="<!--{$arrErr.reviewer_name|sfGetErrorColor}-->" /></td>
            </tr>
            <tr>
                <th>Poster URL</th>
                <td><span class="attention"><!--{$arrErr.reviewer_url}--></span><input type="text" name="reviewer_url" value="<!--{$arrForm.reviewer_url|h}-->" maxlength="<!--{$smarty.const.MTEXT_LEN}-->" class="boxHarf text data-role-none"  placeholder="Poster URL" style="<!--{$arrErr.reviewer_url|sfGetErrorColor}-->" /></td>
            </tr>
            <tr>
                <th>Gender</th>
                <td>
                    <input type="radio" name="sex" id="man" value="1" <!--{if $arrForm.sex eq 1}--> checked="checked"<!--{/if}--> /><label for="man">Male</label>&nbsp;
                    <input type="radio" name="sex" id="woman" value="2" <!--{if $arrForm.sex eq 2}--> checked="checked"<!--{/if}--> /><label for="woman">Female</label>
                </td>
            </tr>
            <tr>
                <th>Rating<span class="attention">*</span></th>
                <td>
                    <span class="attention"><!--{$arrErr.recommend_level}--></span>
                    <select name="recommend_level" style="<!--{$arrErr.recommend_level|sfGetErrorColor}-->">
                        <option value="" selected="selected">Please make a selection</option>
                            <!--{html_options options=$arrRECOMMEND selected=$arrForm.recommend_level}-->
                    </select>
                </td>
            </tr>
            <tr>
                <th>Title<span class="attention">*</span></th>
                <td>
                    <span class="attention"><!--{$arrErr.title}--></span>
                    <input type="text" name="title" value="<!--{$arrForm.title|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" class="boxHarf text data-role-none" placeholder="Title" style="<!--{$arrErr.title|sfGetErrorColor}-->" />
                </td>
            </tr>
            <tr>
                <th>Comment<span class="attention">*</span></th>
                <td>
                    <span class="attention"><!--{$arrErr.comment}--></span>
                    <textarea name="comment" cols="15" rows="10" style="<!--{$arrErr.comment|sfGetErrorColor}-->" class="textarea data-role-none" wrap="hard"><!--{"\n"}--><!--{$arrForm.comment|h}--></textarea>
                </td>
            </tr>
        </table>
        <div class="btn_area">
                <p><input type="submit" value="Confirm" class="btn data-role-none" alt="Next" name="next" id="next" /></p>
            </div>
    </form>
</div>

<!--{include file="`$smarty.const.SMARTPHONE_TEMPLATE_REALDIR`popup_footer.tpl"}-->
