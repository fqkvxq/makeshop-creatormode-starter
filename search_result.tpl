<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title><{$page.title}></title>
<meta name="description" content="<{$page.description}>">
<link rel="shortcut icon" type="image/ico" href="<{$shop.favicon_url}>">
<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
<{$makeshop.head}>
<link href="<{$page.css}>" rel="stylesheet">
</head>

<body>
<header>
<{$module.header}>
</header>

<div class="wrap">
    <{$module.side}>

    <div class="content">

        <section class="section">

            <!--パンくず-->
            <div class="breadcrumb">
                <span class="breadcrumb-item"><a href="<{$url.top}>">ホーム</a></span>
                <span class="breadcrumb-item current">検索結果
                    （
                    <{if $search.keyword}>
                    キーワード：<{$search.keyword}>、
                    <{/if}>
                    <{if $search.category.name}>
                    カテゴリ：<{$search.category.name}>
                    <{else}>
                    カテゴリ：すべてのカテゴリー
                    <{/if}>
                    <{if $search.price_low || $search.price_high}>
                    、価格：<{if $search.price_low}><{$search.price_low}>円<{/if}>～<{if $search.price_high}><{$search.price_high}>円<{/if}>
                    <{/if}>
                    <{if $search.original_code}>
                    、独自商品コード：<{$search.original_code}>
                    <{/if}>
                    ）
                </span>
            </div>

            <div class="search-head">
                <h2 class="section-title search-title">
                    <{if $search.keyword}>
                    キーワード：<{$search.keyword}>、
                    <{/if}>
                    <{if $search.category.name}>
                    カテゴリ：<{$search.category.name}>
                    <{else}>
                    カテゴリ：すべてのカテゴリー
                    <{/if}>
                    <{if $search.price_low || $search.price_high}>
                    、価格：<{if $search.price_low}><{$search.price_low}>円<{/if}>～<{if $search.price_high}><{$search.price_high}>円<{/if}>
                    <{/if}>
                    <{if $search.original_code}>
                    、独自商品コード：<{$search.original_code}>
                    <{/if}>
                </h2>
            </div>

            <div class="list-head search-item-list-head">
                <p class="list-head-count">全<{$search.total_count}>件中<{$search.display_count}>件表示</p>
                <dl class="list-head-sort">
                    <dt>並び替え：</dt>
                    <dd><a href="<{$search.sort_low_price_url}>">価格の低い順</a></dd>
                    <dd><a href="<{$search.sort_high_price_url}>">価格の高い順</a></dd>
                    <dd><a href="<{$search.sort_recommend_url}>">おすすめ順</a></dd>
                    <dd><a href="<{$search.sort_new_url}>">新着順</a></dd>
                </dl>
            </div>

            <{if $search.item.has_item}>
            <ul class="item-list-wrap category-item-list">
                <{section name=i loop=$search.item.list}>
                <li class="item-list">
                    <div class="item-list-image">
                        <{if $search.item.list[i].is_soldout}>
                        <div class="item-badge item-soldout-badge">SOLD<br>OUT</div>
                        <{elseif $search.item.list[i].is_sale}>
                        <div class="item-badge item-sale-badge">SALE</div>
                        <{/if}>
                        <a href="<{$search.item.list[i].url}>"><img src="<{$search.item.list[i].image_L}>"></a>
                    </div>
                    <div class="item-list-info">
                        <ul class="item-list-icon">
                            <{section name=j loop=$search.item.list[i].icon.list}>
                            <li><img src="<{$search.item.list[i].icon.list[j].image_url}>" alt=""></li>
                            <{/section}>
                        </ul>
                        <p class="item-list-category-name"><a href="<{$search.item.list[i].base_category.url}>"><{$search.item.list[i].base_category.name}></a></p>
                        <p class="item-list-name"><a href="<{$search.item.list[i].url}>"><{$search.item.list[i].name}></a></p>
                        <p class="item-list-price">￥<{$search.item.list[i].price|number_format}></p>
                        <{if $search.item.list[i].is_sale}>
                        <p class="item-list-price item-list-sale-price"><span class="item-list-sale-discount-rate"><{$search.item.list[i].sale_rate}>%OFF</span></p>
                        <{/if}>

                        <{if !$search.item.list[i].is_soldout}>
                            <!---数量を表示-->
                            <{if $search.item.list[i].is_stock_display}>
                                <!---無制限-->
                                <{if $search.item.list[i].is_stock_unlimited}>
                                <p class="item-list-stock">〇在庫あり</p>
                                <{else}>
                                <!-- 残りわずかだったら -->
                                <{if $search.item.list[i].is_small_stock}>
                                <p class="item-list-stock">△残りわずか<span class="item-stock">あと<{$search.item.list[i].stock_quantity}>個</span></p>
                                <{else}>
                                <p class="item-list-stock">〇在庫あり<span class="item-stock">あと<{$search.item.list[i].stock_quantity}>個</span></p>
                                <{/if}>
                                <{/if}>
                            <{/if}>
                        <{else}>
                        <p class="item-list-stock">×売り切れ</p>
                        <{/if}>

                        <{if $search.item.list[i].point}>
                        <p class="item-list-point"><{$search.item.list[i].point|number_format}>ポイント</p>
                        <{/if}>
                        <{if $search.item.list[i].original_code}>
                        <p class="item-list-original-code"><{$search.item.list[i].original_code}></p>
                        <{/if}>
                        <{if $search.item.list[i].system_code}>
                        <p class="item-list-system-code"><{$search.item.list[i].system_code}></p>
                        <{/if}>
                        <{if $search.item.list[i].origin_country}>
                        <p class="item-list-origin_country">原産地：<{$search.item.list[i].origin_country}></p>
                        <{/if}>
                        <{if $search.item.list[i].manufacturer}>
                        <p class="item-list-manufacturer">製造元：<{$search.item.list[i].manufacturer}></p>
                        <{/if}>
                        <{if $search.item.list[i].special_display}>
                        <p class="item-list-special_display">特殊表示：<{$search.item.list[i].special_display}></p>
                        <{/if}>
                        <{if $search.item.list[i].description}>
                        <p class="item-list-description"><{$search.item.list[i].description|cut_html}>...</p>
                        <{/if}>
                        <{if $search.item.list[i].has_review}>
                        <div class="item-list-review">
                            <{$search.item.list[i].review.star_html}>
                            <p class="item-list-review-rate"><{$search.item.list[i].review.average}></p>
                            <p class="item-list-review-count">[<{$search.item.list[i].review.total_count}>件]</p>
                        </div>
                        <{/if}>
                    </div>

                </li>
                <{/section}>
            </ul>

            <{if $search.pager.has_item }>
            <ul class="pager">
                <{if !$search.pager.is_first_display}>
                    <li><a href="<{$search.pager.first_url}>"><span class="btn-prev">一番前へ</span></a></li>
                <{/if}>

                <{section name=i loop=$search.pager.list}>
                <{if $search.pager.list[i].is_current_page}>
                    <li><span class="current"><{$search.pager.list[i].number}></span></li>
                <{else}>
                    <li><a href="<{$search.pager.list[i].url}>"><span><{$search.pager.list[i].number}></span></a></li>
                <{/if}>
                <{/section}>

                <{if !$search.pager.is_last_display}>
                    <li><a href="<{$search.pager.last_url}>"><span class="btn-next">最後へ</span></a></li>
                <{/if}>
            </ul>
            <{/if}>
            
            <{else}>
                <p class="empty">条件に一致する商品は見つかりませんでした。</p>
            <{/if}>

        </section>

    </div>

</div>

<footer>
<{$module.footer}>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="<{$page.javascript}>"></script>
<{$makeshop.body_bottom}>
</body>
</html>
