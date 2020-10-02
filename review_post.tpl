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
                <span class="breadcrumb-item current"><a href="<{$item.url}>"><{$item.name}></a>のレビュー投稿</span>
            </div>

            <h2 class="section-title review-title"><em><{$item.name}></em>のレビュー投稿</h2>
            
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
                        <{$review.star_html}>
                        <p class="review-average"><{$review.average}></p>
                        <p class="review-count">（<{$review.total_count}>件）</p>
                    </div>
                    <{else}>
                        <p>まだレビューはありません</p>
                    <{/if}>
                </div>
            </div>

            <!--レビュー投稿フォーム-->
            <div class="review-form-wrap">
                <dl class="review-form">
                    <dt class="review-form-title">
                        ニックネーム
                    </dt>
                    <dd class="review-form-content">
                        <input type="text" data-id="<{$review.name_id}>">
                    </dd>
                </dl>
                <dl class="review-form">
                    <dt class="review-form-title">
                        評価
                    </dt>
                    <dd class="review-form-content">
                        <{$review.star_select_html}>
                    </dd>
                </dl>
                <dl class="review-form">
                    <dt class="review-form-title">
                        コメント
                    </dt>
                    <dd class="review-form-content">
                        <textarea name="" id="" cols="30" rows="10" data-id="<{$review.content_id}>"></textarea>
                    </dd>
                </dl>

                <a href="<{$review.entry_url}>" class="btn review-post-btn">この内容でレビューを投稿する</a>
            </div>

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
