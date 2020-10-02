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
                <span class="breadcrumb-item current"><a href="<{$item.url}>"><{$item.name}></a>のレビュー一覧</span>
            </div>

            <h2 class="section-title review-title"><em><{$item.name}></em>のレビュー一覧</h2>

            <!--レビュー対象商品-->
            <div class="review-item-wrap">
                <div class="review-item-image">
                    <img src="<{$item.image_S}>" alt="<{$item.name}>">
                </div>
                <div class="review-item-info">
                    <p class="review-item-category"><{$item.base_category.name}></p>
                    <p class="review-item-name"><a href="<{$item.url}>"><{$item.name}></a></p>
                    <{if $review.has_item}>
                    <div class="total-review">
                        <div class="review-star"><{$review.star_html}></div>
                        <p class="review-average"><{$review.average}></p>
                        <p class="review-count">（<{$review.total_count}>件）</p>
                    </div>
                    <{/if}>
                </div>
            </div>
            <div class="review-item-btn"><a href="<{$review.post_url}>" class="btn btn-review-post">レビューを書く</a></div>



            <div class="list-head review-list-head">
                <p class="category-count">全<{$review.total_count}>件中<{$review.display_count}>件表示</p>
            </div>

            <!--レビュー一覧-->
            <{if $review.has_item}>
                <ul class="review-list  all-review">
                    <{section name=i loop=$review.list}>
                    <li class="review-list-unit">
                        <div class="review-list-head">
                            <div class="review-head-wrap">
                                <p class="review-name"><i class="fa fa-user-circle-o" aria-hidden="true"></i><span><{$review.list[i].reviewer_name}></span>さん</p>

                                <div class="review-list-score-wrap">
                                    <div class="review-star"><{$review.list[i].star_html}></div>
                                    <p class="review-score"><{$review.list[i].score}></p>
                                </div>
                            </div>
                            <p class="review-list-date"><{$review.list[i].date.year}>/<{$review.list[i].date.month}>/<{$review.list[i].date.day}> <{$review.list[i].date.hour}>:<{$review.list[i].date.minute}></p>
                        </div>
                        <div class="review-list-content"><{$review.list[i].content}></div>

                    </li>
                    <{/section}>
                </ul>


               <{if $review.pager.has_item}>
                <ul class="pager">
                    <{if !$review.pager.is_first_display}>
                        <li><a href="<{$review.pager.first_url}>"><span class="btn-prev">一番前へ</span></a></li>
                    <{/if}>

                    <{foreach from=$review.pager.list item=review_list}>

                    <{if $review_list.is_current_page}>
                        <li><span class="current"><{$review_list.number}></span></li>
                    <{else}>
                        <li><a href="<{$review_list.url}>"><span><{$review_list.number}></span></a></li>
                    <{/if}>

                    <{/foreach}>

                    <{if !$review.pager.is_last_display}>
                        <li><a href="<{$review.pager.last_url}>"><span class="btn-next">最後へ</span></a></li>
                    <{/if}>
                </ul>
                <{/if}>

            <{else}>
                <p class="empty">この商品のレビューはまだありません。</p>
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
