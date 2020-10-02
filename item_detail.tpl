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

        <!--パンくず-->
        <{if $item.breadcrumb_list_group.has_item}>
        <{section name=i loop=$item.breadcrumb_list_group.list}>
            <{if $item.breadcrumb_list_group.list[i].has_item}>
            <div class="breadcrumb">
                <span class="breadcrumb-item"><a href="<{$url.top}>">ホーム</a></span>
                <{section name=j loop=$item.breadcrumb_list_group.list[i].list}>
                <{if $item.breadcrumb_list_group.list[i].list[j].is_current}>
                <span class="breadcrumb-item"><{$item.breadcrumb_list_group.list[i].list[j].name}></span>
                <{else}>
                <span class="breadcrumb-item"><a href="<{$item.breadcrumb_list_group.list[i].list[j].url}>"><{$item.breadcrumb_list_group.list[i].list[j].name}></a></span>
                <{/if}>
                <{/section}>
            </div>
            <{/if}>
        <{/section}>
        <{/if}>

        <section class="section item">

            <!--商品画像-->
            <div class="item-image-wrap">
                <{if $item.multi_image.has_item}>
                <ul>
                    <{section name=i loop=$item.multi_image.list}>
                    <li><img src="<{$item.multi_image.list[i].image_L}>" class="item-image" alt=""></li>
                    <{/section}>
                </ul>
                <{else}>
                <div class="main-image">
                    <img src="<{$item.image_L}>" alt="" class="item-image">
                </div>
                <{/if}>

                <!--商品レビュー-->
                <{if $item.review.is_enabled}>
                <div class="item-review-detail">
                    <h3 class="item-section-title item-review-title">この商品についてのレビュー<div class="btn-wrap btn-review-post-wrap"><a href="<{$item.review.post_url}>" class="btn btn-review-post">レビューを書く</a></div></h3>

                    <{if $item.review.has_item}>
                    <ul class="review-list item-review-list">
                        <{section name=i loop=$item.review.list}>
                        <li class="review-list-unit">
                            <div class="review-list-head">
                                <p class="review-list-name"><i class="fa fa-user-circle-o" aria-hidden="true"></i><span><{$item.review.list[i].reviewer_name}></span>さん</p>
                                <div class="review-list-score-wrap">
                                    <div class="review-star"><{$item.review.list[i].star_html}></div>
                                    <p class="review-score"><{$item.review.list[i].score}></p>
                                </div>
                            </div>
                            <div class="review-list-content"><{$item.review.list[i].content}></div>
                            <p class="review-list-date"><{$item.review.list[i].date.year}>/<{$item.review.list[i].date.month}>/<{$item.review.list[i].date.day}>&nbsp;<{$item.review.list[i].date.hour}>:<{$item.review.list[i].date.minute}></p>
                        </li>
                        <{/section}>
                    </ul>
                    <div class="btn-wrap btn-review-list-wrap"><a href="<{$item.review.list_url}>" class="btn btn-review-list">レビュー一覧を見る</a></div>
                    <{else}>
                    <div class="review-list-empty">
                        <p class="review-list-text">レビューはまだありません</p>
                    </div>
                    <{/if}>
                </div>
                <{/if}>
            </div>

            <!--商品情報-->
            <div class="item-wrap">

                <!--カテゴリー名ー-->
                <p class="item-category-name">基本カテゴリ名：<a href="<{$item.base_category.url}>"><{$item.base_category.name}></a></p>

                <!--アイコン-->
                <{if $item.icon.has_item}>
                <ul class="item-icon-list">
                    <{section name=i loop=$item.icon.list}>
                    <li><img src="<{$item.icon.list[i].image_url}>" alt=""></li>
                    <{/section}>
                </ul>
                <{/if}>

                <!--商品名-->
                <h1 class="item-name"><{$item.name}></h1>

                <!--レビュー-->
                <{if $item.review.is_enabled && 0 < $item.review.total_count}>
                <div class="item-review">
                    <{$item.review.star_html}>
                    <p class="item-review-average"><{$item.review.average}></p>
                    <p class="item-review-count">（<{$item.review.total_count}>件）</p>
                </div>
                <{/if}>

                <!--商品説明文-->
                <{if $item.description}>
                <div class="item-description-wrap">
                    <p class="item-description"><{$item.description}></p>
                </div>
                <{/if}>

                <div class="item-price-wrap">
                    <!--定価のとき-->
                    <{if $item.fixed_price}>
                    <p class="fixed-price"><{$item.fixed_price_name}>：<span>￥<{$item.fixed_price|number_format}></span></p>
                    <{/if}>

                    <!--セールのとき-->
                    <{if $item.is_sale}>
                    <div class="sale-info">
                        <{if $item.has_sale_period}>
                            <p class="sale-priod">セール期間：
                            <{if $item.sale_start.year}>
                                <{$item.sale_start.year}>年<{$item.sale_start.month}>月<{$item.sale_start.day}>日
                            <{/if}>
                            ～
                            <{if $item.sale_end.year}>
                                <{$item.sale_end.year}>年<{$item.sale_end.month}>月<{$item.sale_end.day}>日
                            <{/if}>
                            </p>
                        <{/if}>

                        <p class="before-price">セール前の値段　￥<{$item.original_price|number_format}></p>
                        <p class="sale-rate"><em class="sale-badge"><{$item.sale_rate}>%OFF</em><span class="sale-discount"></span></p>
                    </div>
                    <{/if}>

                    <!-- 実際の購入金額 -->
                    <p class="item-price">￥<{$item.price_html}><span class="tax">（税込）</span></p>

                    <p class="item-price">￥<{$item.price_excluded_tax_html}><span class="tax">（税抜き）</span></p>

                    <p class="item-price">￥<{$item.tax_html}><span class="tax">（税）</span></p>
                </div>

                <!--予約販売-->
                <{if $item.is_reservation_sale}>
                    <div class="item-reserve">
                    <p class="item-reserve-text"><{$item.reservation_sale_note}></p>
                    <{if $item.has_release_date}>
                        <{if !$item.is_released}>
                            <p class="item-reserve-release-date">販売開始：<{$item.release_date.year}>年<{$item.release_date.month}>月<{$item.release_date.day}>日</p>
                            <p class="item-reserve-release-text"><{$item.release_date_note}></p>
                        <{/if}>
                    <{/if}>
                    </div>
                <{/if}>

                <!--ポイント-->
                <p class="item-point">獲得ポイント：<{$item.point_html}>pt</p>

                <!--販売時期-->
                <{if $item.is_sell_start || $item.is_sell_end}>
                    <{if $item.is_sell_start}>
                        <p>販売開始：<{$item.sell_start.year}>年<{$item.sell_start.month}>月<{$item.sell_start.day}>日<{$item.sell_start.hour}>：<{$item.sell_start.minute}></p>
                    <{/if}>
                    <{if $item.is_sell_end}>
                        <p>販売終了：<{$item.sell_end.year}>年<{$item.sell_end.month}>月<{$item.sell_end.day}>日<{$item.sell_end.hour}>：<{$item.sell_end.minute}></p>
                    <{/if}>
                <{/if}>

                <!--オプション-->
                <{if $item.has_option}>
                    <div class="item-option">
                    <{$item.option_html}>
                    </div>
                <{/if}>

                <div class="item-quantity">
                    数量<input type="text" data-id="<{$item.quantity_id}>" value="1">
                </div>

                <!--カート-->
                <div class="cart-btn-wrap">
                    <{if $item.is_within_sell_period}>
                        <{if !$item.is_soldout}>
                            <{if !$item.has_option}>
                                <!---数量を表示-->
                                <{if $item.is_stock_display}>
                                    <!---無制限-->
                                    <{if $item.is_stock_unlimited}>
                                    <p class="item-stock">〇在庫あり</p>
                                    <{else}>
                                    <{if $item.is_small_stock}>
                                    <p class="item-stock">△残りわずか<span class="item-stock-count">あと<{$item.stock_quantity}>個</span></p>
                                    <{else}>
                                    <p class="item-stock">〇在庫あり<span class="item-stock-count">あと<{$item.stock_quantity}>個</span></p>
                                    <{/if}>
                                    <{/if}>
                                <{/if}>
                            <{/if}>
                            <div><a href="<{$item.cart_entry_url}>" class="btn cart-btn">カートに入れる</a></div>
                        <{else}>
                            <{if $item.is_restock_enabled}>
                                <div><a href="<{$item.restock_url}>" class="btn restock-btn">再入荷お知らせを受け取る</a></div>
                            <{else}>
                                <div class="soldout">×売り切れ</div>
                            <{/if}>
                        <{/if}>
                    <{else}>
                        <div class="soldout">販売期間外の商品です</div>
                    <{/if}>
                </div>


                <!--商品説明-->
                <div class="item-info">
                    <!--追加商品説明文-->
                    <div class="item-adddescription-wrap">
                        <p class="item-adddescription"><{$item.description2}></p>
                    </div>

                    <dl class="item-info-list">
                        <{if $item.system_code}>
                        <dt>システム商品コード</dt>
                        <dd><{$item.system_code}></dd>
                        <{/if}>
                        <{if $item.original_code}>
                        <dt>独自商品コード</dt>
                        <dd><{$item.original_code}></dd>
                        <{/if}>
                        <{if $item.manufacturer}>
                        <dt>製造元</dt>
                        <dd><{$item.manufacturer}></dd>
                        <{/if}>
                        <{if $item.origin_country}>
                        <dt>原産地</dt>
                        <dd><{$item.origin_country}></dd>
                        <{/if}>
                        <{if $item.special_display}>
                        <dt>特殊表示</dt>
                        <dd><{$item.special_display}></dd>
                        <{/if}>
                        <{if $item.is_delivery_price_display}>
                        <dt>目安送料</dt>
                        <dd><{$item.delivery_price}>円～</dd>
                        <{/if}>
                        <{if $item.is_member_delivery_price_display}>
                        <dt>目安送料</dt>
                        <dd><{$item.member_delivery_price}>円～</dd>
                        <{/if}>
                        <{if $item.is_delivery_price_message_display}>
                        <dt>送料について</dt>
                        <dd><{$item.delivery_price_message}></dd>
                        <{/if}>
                    </dl>

                    <!--商品についての問い合わせ-->
                    <p class="item-contact"><a href="<{$item.contact_url}>">この商品について問い合わせる</a></p>

                    <!--SNS-->
                    <ul class="item-share">
                        <{if $item.sns.twitter}>
                        <li><{$item.sns.twitter}></li>
                        <{/if}>
                        <{if $item.sns.facebook}>
                        <li><{$item.sns.facebook}></li>
                        <{/if}>
                    </ul>

                </div>
            </div>
        </section>

        <!--追加商品画像-->
        <{if $item.add_image.has_item}>
        <section class="section item">
            <div class="add-image">
                <{section name=i loop=$item.add_image.list}>
                <div class="add-image-list">
                    <img src="<{$item.add_image.list[i].image_url}>" alt="">
                    <div class="add-description"><{$item.add_image.list[i].description}></div>
                </div>
                <{/section}>
            </div>
        </section>
        <{/if}>

        <!--商品グループ-->
        <{if $item.group.has_item}>
        <section class="section group-item">
            <h2 class="section-title index-title">商品グループ</h2>
            <ul class="item-list-wrap group-item-list">
                <{section name=i loop=$item.group.list max=6}>
                <li class="item-list">
                    <div class="item-list-image">
                        <{if $item.group.list[i].is_soldout}>
                        <div class="item-badge item-soldout-badge">SOLD<br>OUT</div>
                        <{elseif $item.group.list[i].is_sale}>
                        <div class="item-badge item-sale-badge">SALE</div>
                        <{/if}>
                        <a href="<{$item.group.list[i].url}>"><img src="<{$item.group.list[i].image_L}>"></a>
                    </div>
                    <div class="item-list-info">
                        <{if $item.group.list[i].icon.has_item}>
                        <ul class="item-list-icon">
                            <{section name=j loop=$item.group.list[i].icon.list}>
                            <li><img src="<{$item.group.list[i].icon.list[j].image_url}>" alt=""></li>
                            <{/section}>
                        </ul>
                        <{/if}>
                        <{if $item.group.list[i].base_category.url}>
                        <p class="item-list-category-name"><a href="<{$item.group.list[i].base_category.url}>"><{$item.group.list[i].base_category.name}></a></p>
                        <{/if}>
                        <p class="item-list-name"><a href="<{$item.group.list[i].url}>"><{$item.group.list[i].name}></a></p>
                        <{if $item.group.list[i].is_sale}>
                        <p class="item-list-price item-list-sale-price">￥<{$item.group.list[i].price|number_format}><span class="tax">（税込）</span>
                            <span class="item-list-sale-discount-rate"><{$item.group.list[i].sale_rate}>%OFF</span>
                        </p>
                        <{else}>
                        <p class="item-list-price">￥<{$item.group.list[i].price|number_format}><span class="tax">（税込）</span></p>
                        <{/if}>
                        <{if $item.group.list[i].point}>
                        <p class="item-list-point"><{$item.group.list[i].point|number_format}>ポイント</p>
                        <{/if}>
                        <{if $item.group.list[i].original_code}>
                        <p class="item-list-original-code"><{$item.group.list[i].original_code}></p>
                        <{/if}>
                        <{if $item.group.list[i].system_code}>
                        <p class="item-list-system-code"><{$item.group.list[i].system_code}></p>
                        <{/if}>
                        <{if $item.group.list[i].origin_country}>
                        <p class="item-list-origin_country">原産地：<{$item.group.list[i].origin_country}></p>
                        <{/if}>
                        <{if $item.group.list[i].manufacturer}>
                        <p class="item-list-manufacturer">製造元：<{$item.group.list[i].manufacturer}></p>
                        <{/if}>
                        <{if $item.group.list[i].special_display}>
                        <p class="item-list-special_display">特殊表示：<{$item.group.list[i].special_display}></p>
                        <{/if}>
                        <{if $item.group.list[i].description}>
                        <p class="item-list-description"><{$item.group.list[i].description|cut_html}>...</p>
                        <{/if}>
                        <{if $item.group.list[i].has_review}>
                        <div class="item-list-review">
                            <{$item.group.list[i].review.star_html}>
                            <p class="item-list-review-rate"><{$item.group.list[i].review.average}></p>
                            <p class="item-list-review-count">[<a href="<{$item.group.list[i].review.url}>"><{$item.group.list[i].review.total_count}>件</a>]</p>
                        </div>
                        <{/if}>
                    </div>
                </li>
                <{/section}>
            </ul>
        </section>
        <{/if}>

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
