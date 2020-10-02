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
                <{section name=i loop=$category.breadcrumb_list.list}>
                <span class="breadcrumb-item <{if $category.breadcrumb_list.list[i].is_current}>current<{/if}>"><a href="<{$category.breadcrumb_list.list[i].url}>"><{$category.breadcrumb_list.list[i].name}></a></span>
                <{/section}>
            </div>

            <div class="category-head">
                <h2 class="section-title category-title"><{$category.name}><span class="category-code">コード：<{$category.code}></span></h2>
                
                <{if $category.image_url}>
                <img src="<{$category.image_url}>" alt="<{$category.name}>" class="category-image">
                <{/if}>

                <{if $category.child_category.has_item}>
                <ul class="child-category-list">
                    <{section name=i loop=$category.child_category.list}>
                    <li class="child-category-item">
                        <p class="child-category-name"><a href="<{$category.child_category.list[i].url}>"><{$category.child_category.list[i].name}><span class="child-category-count">(<{$category.child_category.list[i].item_count}>)</span></a></p>
                    </li>
                    <{/section}>
                </ul>
                <{/if}>
            </div>

            <{if $category.recommend_item.has_item}>                
            <section class="section category-recommend-item">
                <h2 class="section-title category-recomend-title">このカテゴリーのおすすめ商品</h2>
                <ul class="item-list-wrap recommend-item-list">
                    <{section name=i loop=$category.recommend_item.list max=3}>
                    <li class="item-list">
                        <div class="item-list-image">
                            <{if $category.recommend_item.list[i].is_soldout}>
                            <div class="item-badge item-soldout-badge">SOLD<br>OUT</div>
                            <{elseif $category.recommend_item.list[i].is_sale}>
                            <div class="item-badge item-sale-badge">SALE</div>
                            <{/if}>
                            <a href="<{$category.recommend_item.list[i].url}>"><img src="<{$category.recommend_item.list[i].image_L}>"></a>
                        </div>
                        <div class="item-list-info">
                            <{if $category.recommend_item.list[i].icon.has_item}>
                            <ul class="item-list-icon">
                                <{section name=j loop=$category.recommend_item.list[i].icon.list}>
                                    <li><img src="<{$category.recommend_item.list[i].icon.list[j].image_url}>" alt=""></li>
                                <{/section}>
                            </ul>
                            <{/if}>
                            <p class="item-list-category-name"><a href="<{$category.recommend_item.list[i].base_category.url}>"><{$category.recommend_item.list[i].base_category.name}></a></p>
                            <p class="item-list-name"><a href="<{$category.recommend_item.list[i].url}>"><{$category.recommend_item.list[i].name}></a></p>
                            <{if $category.recommend_item.list[i].is_sale}>
                            <p class="item-list-price item-list-sale-price">￥<{$category.recommend_item.list[i].price|number_format}>
                                <span class="item-list-sale-discount-rate"><{$category.recommend_item.list[i].sale_rate}>%OFF</span>
                            </p>
                            <{else}>
                            <p class="item-list-price">￥<{$category.recommend_item.list[i].price|number_format}></p>
                            <{/if}>
                            <{if $category.recommend_item.list[i].point}>
                            <p class="item-list-point"><{$category.recommend_item.list[i].point|number_format}>ポイント</p>
                            <{/if}>
                            <{if $category.recommend_item.list[i].original_code}>
                            <p class="item-list-original-code"><{$category.recommend_item.list[i].original_code}></p>
                            <{/if}>
                            <{if $category.recommend_item.list[i].system_code}>
                            <p class="item-list-system-code"><{$category.recommend_item.list[i].system_code}></p>
                            <{/if}>
                            <{if $category.recommend_item.list[i].origin_country}>
                            <p class="item-list-origin_country">原産地：<{$category.recommend_item.list[i].origin_country}></p>
                            <{/if}>
                            <{if $category.recommend_item.list[i].manufacturer}>
                            <p class="item-list-manufacturer">製造元：<{$category.recommend_item.list[i].manufacturer}></p>
                            <{/if}>
                            <{if $category.recommend_item.list[i].special_display}>
                            <p class="item-list-special_display">特殊表示：<{$category.recommend_item.list[i].special_display}></p>
                            <{/if}>
                            <{if $category.recommend_item.list[i].description}>
                            <p class="item-list-description"><{$category.recommend_item.list[i].description|cut_html}>...</p>
                            <{/if}>
                            <{if $category.recommend_item.list[i].has_review}>
                            <div class="item-list-review">
                                <{$category.recommend_item.list[i].review.star_html}>
                                <p class="item-list-review-rate"><{$category.recommend_item.list[i].review.average}></p>
                                <p class="item-list-review-count">[<a href="<{$category.recommend_item.list[i].review.url}>"><{$category.recommend_item.list[i].review.total_count}>件</a>]</p>
                            </div>
                            <{/if}>
                        </div>
                    </li>
                    <{/section}>
                </ul>
            </section>
            <{/if}>
            
            <div class="list-head category-item-list-head">
                <p class="list-head-count">全<{$category.total_count}>件中<{$category.display_count}>件表示</p>
                <dl class="list-head-sort">
                    <dt>並び替え：</dt>
                    <dd><a href="<{$category.sort_low_price_url}>">価格の低い順</a></dd>
                    <dd><a href="<{$category.sort_high_price_url}>">価格の高い順</a></dd>
                    <dd><a href="<{$category.sort_recommend_url}>">おすすめ順</a></dd>
                    <dd><a href="<{$category.sort_new_url}>">新着順</a></dd>
                </dl>
            </div>

            <{if $category.item.has_item}>
            
            <ul class="item-list-wrap category-item-list">
                <{section name=i loop=$category.item.list}>
                <li class="item-list">
                    <div class="item-list-image">
                        <{if $category.item.list[i].is_soldout}>
                        <div class="item-badge item-soldout-badge">SOLD<br>OUT</div>
                        <{elseif $category.item.list[i].is_sale}>
                        <div class="item-badge item-sale-badge">SALE</div>
                        <{/if}>
                        <a href="<{$category.item.list[i].url}>"><img src="<{$category.item.list[i].image_L}>"></a>
                    </div>
                    <div class="item-list-info">
                        <ul class="item-list-icon">
                            <{section name=j loop=$category.item.list[i].icon.list}>
                            <li><img src="<{$category.item.list[i].icon.list[j].image_url}>" alt=""></li>
                            <{/section}>
                        </ul>
                        <p class="item-list-category-name"><a href=""><{$category.name}></a></p>
                        <p class="item-list-name"><a href="<{$category.item.list[i].url}>"><{$category.item.list[i].name}></a></p>
                        <{if $category.item.list[i].is_sale}>
                        <p class="item-list-price item-list-sale-price">￥<{$category.item.list[i].price|number_format}><span class="item-list-sale-discount-rate"><{$category.item.list[i].sale_rate}>%OFF</span></p>
                        <{else}>
                        <p class="item-list-price">￥<{$category.item.list[i].price|number_format}></p>
                        <{/if}>

                        <{if !$category.item.list[i].is_soldout}>
                            <!---数量を表示-->
                            <{if $category.item.list[i].is_stock_display}>
                                <!---無制限-->
                                <{if $category.item.list[i].is_stock_unlimited}>
                                <p class="item-list-stock">〇在庫あり</p>
                                <{else}>
                                <!-- 残りわずかだったら -->
                                <{if $category.item.list[i].is_small_stock}>
                                <p class="item-list-stock">△残りわずか<span class="item-stock">あと<{$category.item.list[i].stock_quantity}>個</span></p>
                                <{else}>
                                <p class="item-list-stock">〇在庫あり<span class="item-stock">あと<{$category.item.list[i].stock_quantity}>個</span></p>
                                <{/if}>
                                <{/if}>
                            <{/if}>
                        <{else}>
                        <p class="item-list-stock">×売り切れ</p>
                        <{/if}>

                        <{if $category.item.list[i].point}>
                        <p class="item-list-point"><{$category.item.list[i].point|number_format}>ポイント</p>
                        <{/if}>
                        <{if $category.item.list[i].original_code}>
                        <p class="item-list-original-code"><{$category.item.list[i].original_code}></p>
                        <{/if}>
                        <{if $category.item.list[i].system_code}>
                        <p class="item-list-system-code"><{$category.item.list[i].system_code}></p>
                        <{/if}>
                        <{if $category.item.list[i].origin_country}>
                        <p class="item-list-origin_country">原産地：<{$category.item.list[i].origin_country}></p>
                        <{/if}>
                        <{if $category.item.list[i].manufacturer}>
                        <p class="item-list-manufacturer">製造元：<{$category.item.list[i].manufacturer}></p>
                        <{/if}>
                        <{if $category.item.list[i].special_display}>
                        <p class="item-list-special_display">特殊表示：<{$category.item.list[i].special_display}></p>
                        <{/if}>
                        <{if $category.item.list[i].description}>
                        <p class="item-list-description"><{$category.item.list[i].description|cut_html}>...</p>
                        <{/if}>
                        <{if $category.item.list[i].has_review}>
                        <div class="item-list-review">
                            <{$category.item.list[i].review.star_html}>
                            <p class="item-list-review-rate"><{$category.item.list[i].review.average}></p>
                            <p class="item-list-review-count">[<{$category.item.list[i].review.total_count}>件]</p>
                        </div>
                        <{/if}>
                    </div>
                </li>
                <{/section}>
            </ul>

            <{if $category.pager.has_item}>
            <ul class="pager">
                <{if !$category.pager.is_first_display}>
                    <li><a href="<{$category.pager.first_url}>"><span class="btn-prev">一番前へ</span></a></li>
                <{/if}>

                <{section name=i loop=$category.pager.list}>
                <{if $category.pager.list[i].is_current_page}>
                    <li><span class="current"><{$category.pager.list[i].number}></span></li>
                <{else}>
                    <li><a href="<{$category.pager.list[i].url}>"><span><{$category.pager.list[i].number}></span></a></li>
                <{/if}>
                <{/section}>

                <{if !$category.pager.is_last_display}>
                    <li><a href="<{$category.pager.last_url}>"><span class="btn-next">最後へ</span></a></li>
                <{/if}>
            </ul>
            <{/if}>

            <{else}>
            <p class="empty">このカテゴリーには商品がありません</p>
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
