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

<section class="main-visual">
    <{$shop.mainvisual}>
</section>

<div class="wrap">
    <{$module.side}>

    <div class="content">

        <{if $shop.comment}>
        <section class="section index-content">
            <{$shop.comment}>
        </section>
        <{/if}>

        <section class="section recommend-item">
            <h2 class="section-title index-title">おすすめ商品</h2>
            <ul class="item-list-wrap recommend-item-list">
                <{section name=i loop=$recommend_item.list max=6}>
                <li class="item-list">
                    <div class="item-list-image">
                        <{if $recommend_item.list[i].is_soldout}>
                        <div class="item-badge item-soldout-badge">SOLD<br>OUT</div>
                        <{elseif $recommend_item.list[i].is_sale}>
                        <div class="item-badge item-sale-badge">SALE</div>
                        <{/if}>
                        <a href="<{$recommend_item.list[i].url}>"><img src="<{$recommend_item.list[i].image_L}>"></a>
                    </div>
                    <div class="item-list-info">
                        <{if $recommend_item.list[i].icon.has_item}>
                        <ul class="item-list-icon">
                            <{section name=j loop=$recommend_item.list[i].icon.list}>
                            <li><img src="<{$recommend_item.list[i].icon.list[j].image_url}>" alt=""></li>
                            <{/section}>
                        </ul>
                        <{/if}>
                        <{if $recommend_item.list[i].base_category.url}>
                        <p class="item-list-category-name"><a href="<{$recommend_item.list[i].base_category.url}>"><{$recommend_item.list[i].base_category.name}></a></p>
                        <{/if}>
                        <p class="item-list-name"><a href="<{$recommend_item.list[i].url}>"><{$recommend_item.list[i].name}></a></p>
                        <{if $recommend_item.list[i].is_sale}>
                        <p class="item-list-price item-list-sale-price">￥<{$recommend_item.list[i].price|number_format}><span class="tax">（税込）</span>
                            <span class="item-list-sale-discount-rate"><{$recommend_item.list[i].sale_rate}>%OFF</span>
                        </p>
                        <{else}>
                        <p class="item-list-price">￥<{$recommend_item.list[i].price|number_format}><span class="tax">（税込）</span></p>
                        <{/if}>
                        <{if $recommend_item.list[i].point}>
                        <p class="item-list-point"><{$recommend_item.list[i].point|number_format}>ポイント</p>
                        <{/if}>
                        <{if $recommend_item.list[i].original_code}>
                        <p class="item-list-original-code"><{$recommend_item.list[i].original_code}></p>
                        <{/if}>
                        <{if $recommend_item.list[i].system_code}>
                        <p class="item-list-system-code"><{$recommend_item.list[i].system_code}></p>
                        <{/if}>
                        <{if $recommend_item.list[i].origin_country}>
                        <p class="item-list-origin_country">原産地：<{$recommend_item.list[i].origin_country}></p>
                        <{/if}>
                        <{if $recommend_item.list[i].manufacturer}>
                        <p class="item-list-manufacturer">製造元：<{$recommend_item.list[i].manufacturer}></p>
                        <{/if}>
                        <{if $recommend_item.list[i].special_display}>
                        <p class="item-list-special_display">特殊表示：<{$recommend_item.list[i].special_display}></p>
                        <{/if}>
                        <{if $recommend_item.list[i].description}>
                        <p class="item-list-description"><{$recommend_item.list[i].description|cut_html}>...</p>
                        <{/if}>
                        <{if $recommend_item.list[i].has_review}>
                        <div class="item-list-review">
                            <{$recommend_item.list[i].review.star_html}>
                            <p class="item-list-review-rate"><{$recommend_item.list[i].review.average}></p>
                            <p class="item-list-review-count">[<a href="<{$recommend_item.list[i].review.url}>"><{$recommend_item.list[i].review.total_count}>件</a>]</p>
                        </div>
                        <{/if}>
                    </div>
                </li>
                <{/section}>
            </ul>
        </section>

        <section class="section new-item">
            <h2 class="section-title index-title">新着商品</h2>
            <ul class="item-list-wrap new-item-list">
                <{section name=i loop=$new_item.list max=6}>
                <li class="item-list">
                    <div class="item-list-image">
                        <{if $new_item.list[i].is_soldout}>
                        <div class="item-badge item-soldout-badge">SOLD<br>OUT</div>
                        <{elseif $new_item.list[i].is_sale}>
                        <div class="item-badge item-sale-badge">SALE</div>
                        <{/if}>
                        <a href="<{$new_item.list[i].url}>"><img src="<{$new_item.list[i].image_L}>"></a>
                    </div>
                    <div class="item-list-info">
                        <{if $new_item.list[i].icon.has_item}>
                        <ul class="item-list-icon">
                            <{section name=j loop=$new_item.list[i].icon.list}>
                            <li><img src="<{$new_item.list[i].icon.list[j].image_url}>" alt=""></li>
                            <{/section}>
                        </ul>
                        <{/if}>
                        <{if $new_item.list[i].base_category.url}>
                        <p class="item-list-category-name"><a href="<{$new_item.list[i].base_category.url}>"><{$new_item.list[i].base_category.name}></a></p>
                        <{/if}>
                        <p class="item-list-name"><a href="<{$new_item.list[i].url}>"><{$new_item.list[i].name}></a></p>
                        <{if $new_item.list[i].is_sale}>
                        <p class="item-list-price item-list-sale-price">￥<{$new_item.list[i].price|number_format}><span class="tax">（税込）</span>
                            <span class="item-list-sale-discount-rate"><{$new_item.list[i].sale_rate}>%OFF</span>
                        </p>
                        <{else}>
                        <p class="item-list-price">￥<{$new_item.list[i].price|number_format}><span class="tax">（税込）</span></p>
                        <{/if}>
                        <{if $new_item.list[i].point}>
                        <p class="item-list-point"><{$new_item.list[i].point|number_format}>ポイント</p>
                        <{/if}>
                        <{if $new_item.list[i].original_code}>
                        <p class="item-list-original-code"><{$new_item.list[i].original_code}></p>
                        <{/if}>
                        <{if $new_item.list[i].system_code}>
                        <p class="item-list-system-code"><{$new_item.list[i].system_code}></p>
                        <{/if}>
                        <{if $new_item.list[i].origin_country}>
                        <p class="item-list-origin_country">原産地：<{$new_item.list[i].origin_country}></p>
                        <{/if}>
                        <{if $new_item.list[i].manufacturer}>
                        <p class="item-list-manufacturer">製造元：<{$new_item.list[i].manufacturer}></p>
                        <{/if}>
                        <{if $new_item.list[i].special_display}>
                        <p class="item-list-special_display">特殊表示：<{$new_item.list[i].special_display}></p>
                        <{/if}>
                        <{if $new_item.list[i].description}>
                        <p class="item-list-description"><{$new_item.list[i].description|cut_html}>...</p>
                        <{/if}>
                        <{if $new_item.list[i].has_review}>
                        <div class="item-list-review">
                            <{$new_item.list[i].review.star_html}>
                            <p class="item-list-review-rate"><{$new_item.list[i].review.average}></p>
                            <p class="item-list-review-count">[<a href="<{$new_item.list[i].review.url}>"><{$new_item.list[i].review.total_count}>件</a>]</p>
                        </div>
                        <{/if}>
                    </div>
                </li>
                <{/section}>
            </ul>
        </section>
                            
        <section class="section new-item">
            <h2 class="section-title index-title">スペシャル商品</h2>
            <ul class="item-list-wrap new-item-list">
                <{section name=i loop=$special_item.list max=6}>
                <li class="item-list">
                    <div class="item-list-image">
                        <{if $special_item.list[i].is_soldout}>
                        <div class="item-badge item-soldout-badge">SOLD<br>OUT</div>
                        <{elseif $special_item.list[i].is_sale}>
                        <div class="item-badge item-sale-badge">SALE</div>
                        <{/if}>
                        <a href="<{$special_item.list[i].url}>"><img src="<{$special_item.list[i].image_L}>"></a>
                    </div>
                    <div class="item-list-info">
                        <{if $special_item.list[i].icon.has_item}>
                        <ul class="item-list-icon">
                            <{section name=j loop=$special_item.list[i].icon.list}>
                            <li><img src="<{$special_item.list[i].icon.list[j].image_url}>" alt=""></li>
                            <{/section}>
                        </ul>
                        <{/if}>
                        <{if $special_item.list[i].base_category.url}>
                        <p class="item-list-category-name"><a href="<{$special_item.list[i].base_category.url}>"><{$special_item.list[i].base_category.name}></a></p>
                        <{/if}>
                        <p class="item-list-name"><a href="<{$special_item.list[i].url}>"><{$special_item.list[i].name}></a></p>
                        <{if $special_item.list[i].is_sale}>
                        <p class="item-list-price item-list-sale-price">￥<{$special_item.list[i].price|number_format}><span class="tax">（税込）</span>
                            <span class="item-list-sale-discount-rate"><{$special_item.list[i].sale_rate}>%OFF</span>
                        </p>
                        <{else}>
                        <p class="item-list-price">￥<{$special_item.list[i].price|number_format}><span class="tax">（税込）</span></p>
                        <{/if}>
                        <{if $special_item.list[i].point}>
                        <p class="item-list-point"><{$special_item.list[i].point|number_format}>ポイント</p>
                        <{/if}>
                        <{if $special_item.list[i].original_code}>
                        <p class="item-list-original-code"><{$special_item.list[i].original_code}></p>
                        <{/if}>
                        <{if $special_item.list[i].system_code}>
                        <p class="item-list-system-code"><{$special_item.list[i].system_code}></p>
                        <{/if}>
                        <{if $special_item.list[i].origin_country}>
                        <p class="item-list-origin_country">原産地：<{$special_item.list[i].origin_country}></p>
                        <{/if}>
                        <{if $special_item.list[i].manufacturer}>
                        <p class="item-list-manufacturer">製造元：<{$special_item.list[i].manufacturer}></p>
                        <{/if}>
                        <{if $special_item.list[i].special_display}>
                        <p class="item-list-special_display">特殊表示：<{$special_item.list[i].special_display}></p>
                        <{/if}>
                        <{if $special_item.list[i].description}>
                        <p class="item-list-description"><{$special_item.list[i].description|cut_html}>...</p>
                        <{/if}>
                        <{if $special_item.list[i].has_review}>
                        <div class="item-list-review">
                            <{$special_item.list[i].review.star_html}>
                            <p class="item-list-review-rate"><{$special_item.list[i].review.average}></p>
                            <p class="item-list-review-count">[<a href="<{$special_item.list[i].review.url}>"><{$special_item.list[i].review.total_count}>件</a>]</p>
                        </div>
                        <{/if}>
                    </div>
                </li>
                <{/section}>
            </ul>
        </section>
                            
        <section class="section ranking-item">
            <h2 class="section-title index-title">ランキング</h2>
            <ul class="item-list-wrap ranking-item-list">
                <{section name=i loop=$ranking_item.list max=3}>
                <li class="item-list">
                    <div class="item-list-rank rank-<{$ranking_item.list[i].num}>"><span><{$ranking_item.list[i].num}></span></div>
                    <div class="item-list-image">
                        <{if $ranking_item.list[i].is_soldout}>
                        <div class="item-badge item-soldout-badge">SOLD<br>OUT</div>
                        <{elseif $ranking_item.list[i].is_sale}>
                        <div class="item-badge item-sale-badge">SALE</div>
                        <{/if}>
                        <a href="<{$ranking_item.list[i].url}>"><img src="<{$ranking_item.list[i].image_L}>"></a>
                    </div>
                    <div class="item-list-info">
                        <{if $ranking_item.list[i].icon.has_item}>
                        <ul class="item-list-icon">
                            <{section name=j loop=$ranking_item.list[i].icon.list}>
                            <li><img src="<{$ranking_item.list[i].icon.list[j].image_url}>" alt=""></li>
                            <{/section}>
                        </ul>
                        <{/if}>
                        <p class="item-list-category-name"><a href="<{$ranking_item.list[i].base_category.url}>"><{$ranking_item.list[i].base_category.name}></a></p>
                        <p class="item-list-name"><a href="<{$ranking_item.list[i].url}>"><{$ranking_item.list[i].name}></a></p>
                        <{if $ranking_item.list[i].is_sale}>
                        <p class="item-list-price item-list-sale-price">￥<{$ranking_item.list[i].price|number_format}>
                            <span class="item-list-sale-discount-rate"><{$ranking_item.list[i].sale_rate}>%OFF</span>
                        </p>
                        <{else}>
                        <p class="item-list-price">￥<{$ranking_item.list[i].price|number_format}></p>
                        <{/if}>
                        <{if $ranking_item.list[i].point}>
                        <p class="item-list-point"><{$ranking_item.list[i].point|number_format}>ポイント</p>
                        <{/if}>
                        <{if $ranking_item.list[i].original_code}>
                        <p class="item-list-original-code"><{$ranking_item.list[i].original_code}></p>
                        <{/if}>
                        <{if $ranking_item.list[i].system_code}>
                        <p class="item-list-system-code"><{$ranking_item.list[i].system_code}></p>
                        <{/if}>
                        <{if $ranking_item.list[i].origin_country}>
                        <p class="item-list-origin_country">原産地：<{$ranking_item.list[i].origin_country}></p>
                        <{/if}>
                        <{if $ranking_item.list[i].manufacturer}>
                        <p class="item-list-manufacturer">製造元：<{$ranking_item.list[i].manufacturer}></p>
                        <{/if}>
                        <{if $ranking_item.list[i].special_display}>
                        <p class="item-list-special_display">特殊表示：<{$ranking_item.list[i].special_display}></p>
                        <{/if}>
                        <{if $ranking_item.list[i].description}>
                        <p class="item-list-description"><{$ranking_item.list[i].description|cut_html}>...</p>
                        <{/if}>
                        <{if $ranking_item.list[i].has_review}>
                        <div class="item-list-review">
                            <{$ranking_item.list[i].review.star_html}>
                            <p class="item-list-review-rate"><{$ranking_item.list[i].review.average}></p>
                            <p class="item-list-review-count">[<a href="<{$ranking_item.list[i].review.url}>"><{$ranking_item.list[i].review.total_count}>件</a>]</p>
                        </div>
                        <{/if}>
                    </div>

                </li>
                <{/section}>
            </ul>
        </section>                    
            
        <{if $review_item.has_item}>
        <section class="section index-info">
            <h2 class="section-title index-title">新着レビュー</h2>
            <ul class="review-list index-review-list">
                <{section name=i loop=$review_item.list max=5}>
                <li class="review-list-unit">
                    <div class="review-list-info">
                        <a href="<{$review_item.list[i].url}>"><img src="<{$review_item.list[i].image_S}>" alt="<{$review_item.list[i].name}>"></a>
                        <p class="review-list-category"><a href="<{$review_item.list[i].base_category.url}>"><{$review_item.list[i].base_category.name}></a></p>
                        <p class="review-list-name"><a href="<{$review_item.list[i].url}>"><{$review_item.list[i].name}></a></p>
                    </div>

                    <div class="review-list-content-wrap">
                        <div class="review-list-head">
                            <div class="review-head-wrap">
                                <p class="review-list-name"><i class="fa fa-user-circle-o" aria-hidden="true"></i><span><{$review_item.list[i].reviewer_name}></span>さん</p>
                                <div class="review-score-wrap">
                                    <div class="review-star"><{$review_item.list[i].star_html}></div>
                                    <p class="review-score"><{$review_item.list[i].score}></p>
                                </div>
                            </div>
                            <p class="review-list-date"><{$review_item.list[i].date.year}>/<{$review_item.list[i].date.month}>/<{$review_item.list[i].date.day}>&nbsp;<{$review_item.list[i].date.hour}>:<{$review_item.list[i].date.minute}></p>
                        </div>
                        <div class="review-list-content"><{$review_item.list[i].content}></div>
                    </div>
                </li>
                <{/section}>
            </ul>
        </section>
        <{/if}>

        <{if $latest_news.has_item}>
        <section class="section index-news">
            <h2 class="section-title index-title">お知らせ</h2>
            <ul class="news-list index-news-list">
                <{section name=i loop=$latest_news.list max=5}>
                <li>
                    <p class="news-list-date"><{$latest_news.list[i].date.year}>/<{$latest_news.list[i].date.month}>/<{$latest_news.list[i].date.day}> <{$latest_news.list[i].date.hour}>:<{$latest_news.list[i].date.minute}></p>
                    <div class="news-list-detail">
                        <p class="news-list-title"><a href="<{$latest_news.list[i].url}>"><{$latest_news.list[i].title}></a></p>
                        <p class="news-list-content"><{$latest_news.list[i].content|cut_html:100}></p>
                    </div>
                </li>
                <{/section}>
            </ul>
            <p class="news-more"><a href="<{$url.news}>">お知らせ一覧へ</a></p>
        </section>
        <{/if}>

        <div>
            <{if $shop.banner.has_item}>
            <{section name=i loop=$shop.banner.list}>
            <a href="<{$shop.banner.list[i].url}>" target="<{$shop.banner.list[i].target}>"><img src="<{$shop.banner.list[i].image_url}>"></a>
            <{/section}>
            <{/if}>
        </div>
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
