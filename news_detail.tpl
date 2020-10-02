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
                <span class="breadcrumb-item"><{$news.title}></span>
            </div>

            <div class="news-wrap">
                <div class="news-head">
                    <p class="news-date"><{$news.date.year}>/<{$news.date.month}>/<{$news.date.day}>&nbsp;<{$news.date.hour}>:<{$news.date.minute}></p>
                    <h2 class="section-title news-title"><{$news.title}></h2>
                </div>
                <div class="news-content-wrap">
                    <div class="news-content">
                        <{$news.content}>
                    </div>
                </div>

                <ul class="news-pager">
                    <{if $news.prev_url}>
                    <li class="prev"><a href="<{$news.prev_url}>">前のお知らせ</a></li>
                    <{else}>
                    <li class="prev news-empty">前のお知らせはありません</li>
                    <{/if}>
                    
                    <li class="back"><a href="<{$url.news}>">一覧へ戻る</a></li>
                    
                    <{if $news.next_url}>
                    <li class="next"><a href="<{$news.next_url}>">次のお知らせ</a></li>
                    <{else}>
                    <li class="next news-empty">次のお知らせはありません</li>
                    <{/if}>
                </ul>
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
