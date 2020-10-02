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
                <span class="breadcrumb-item">お知らせ一覧</span>
            </div>

            <h2 class="section-title news-title">お知らせ一覧</h2>

            <div class="list-head news-list-head">
                <p class="list-head-count">全<{$news.total_count}>件中<{$news.display_count}>件表示</p>
            </div>

            <!--お知らせ一覧-->
            <{if $news.has_item}>
                <ul class="news-list">
                    <{section name=i loop=$news.list}>
                    <li class="news-list-unit">
                        <p class="news-list-date"><{$news.list[i].date.year}>/<{$news.list[i].date.month}>/<{$news.list[i].date.day}>&nbsp;<{$news.list[i].date.hour}>:<{$news.list[i].date.minute}></p>
                        <div class="news-list-detail">
                            <p class="news-list-title"><a href="<{$news.list[i].url}>"><{$news.list[i].title}></a></p>
                            <p class="news-list-content"><{$news.list[i].content}></p>
                        </div>
                    </li>
                    <{/section}>
                </ul>

                <{if $news.pager.has_item}>
                <ul class="pager news-list-pager">
                    <{if !$news.pager.is_first_display}>
                        <li><a href="<{$news.pager.first_url}>"><span class="btn-prev">一番前へ</span></a></li>
                    <{/if}>

                    <{section name=i loop=$news.pager.list}>
                    <{if $news.pager.list[i].is_current_page}>
                        <li><span class="current"><{$news.pager.list[i].number}></span></li>
                    <{else}>
                        <li><a href="<{$news.pager.list[i].url}>"><span><{$news.pager.list[i].number}></span></a></li>
                    <{/if}>
                    <{/section}>

                    <{if !$news.pager.is_last_display}>
                        <li><a href="<{$news.pager.last_url}>"><span class="btn-next">最後へ</span></a></li>
                    <{/if}>
                </ul>
                <{/if}>
            <{else}>
                <p class="empty">お知らせはまだありません。</p>
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
