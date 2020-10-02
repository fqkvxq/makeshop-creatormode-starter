<div class="side">

    <section class="side-section side-section-search">
        <h2 class="side-title side-search-title">商品検索</h2>
        <ul class="side-search">
            <li><label>キーワード</label><input type="text" data-id="<{$search_form.keyword_id}>" value="<{$search.keyword}>" class="side-search-keyword" placeholder="キーワードを入力"></li>
            <li><label>カテゴリー</label>
            <select data-id="<{$search_form.category_id}>">
                <{section name=i loop=$search_form.category_list}>
                    <option value="<{$search_form.category_list[i].code}>" <{if $search.category.code == $search_form.category_list[i].code}>selected<{/if}>><{$search_form.category_list[i].name}></option>
                <{/section}>
            </select>
            </li>
            <li><label>価格</label><input type="text" data-id="<{$search_form.price_low_id}>" value="<{$search.price_low}>" class="side-search-price">～<input type="text" data-id="<{$search_form.price_high_id}>" value="<{$search.price_high}>" class="side-search-price">円</li>
            <li><label>独自商品コード</label><input type="text" data-id="<{$search_form.original_code_id}>" class="side-search-original-code" value="<{$search.original_code}>" placeholder="独自商品コードを入力"></li>
        </ul>
        <a href="<{$search_form.search_url}>" class="btn side-search-btn">検索する</a>
    </section>

    <section class="side-section side-section-category">
        <h2 class="side-title side-category-title">カテゴリーから選ぶ</h2>
        <ul class="side-category-list">
            <{section name=i loop=$category_menu.list}>
                <li class="side-category-item"><a href="<{$category_menu.list[i].url}>"><{$category_menu.list[i].name}></a>
                <{if $category_menu.list[i].child_category.has_item}>
                    <ul class="side-category-child-list">
                    <{section name=j loop=$category_menu.list[i].child_category.list}>
                        <li><a href="<{$category_menu.list[i].child_category.list[j].url}>"><{$category_menu.list[i].child_category.list[j].name}></a></li>
                    <{/section}>
                    </ul>
                <{/if}>
                </li>
            <{/section}>
        </ul>
    </section>

    <{if $shop.is_mail_magazine_enabled}>
    <section class="side-section side-section-others">
        <div class="side-section-btn-wrap">
            <a href="<{$url.mail_magazine}>" class="mailmagazine-btn">メールマガジン購読</a>
        </div>
    </section>
    <{/if}>
</div>