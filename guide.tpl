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
        <div class="breadcrumb">
            <span class="breadcrumb-item"><a href="<{$url.top}>">ホーム</a></span>
            <span class="breadcrumb-item">利用案内</span>
        </div>

        <section class="section guide">
            <h2 class="section-title guide-title">利用案内</h2>

            <div class="guide-section">
                <h3 class="guide-section-title">商品注文方法</h3>
                <pre><{$guide.order}></pre>
            </div>

            <div class="guide-section">
                <h3 class="guide-section-title">お支払いについて</h3>
                <pre><{$guide.payment}></pre>
            </div>

            <div class="guide-section">
                <h3 class="guide-section-title">配送について</h3>
                <pre><{$guide.delivery}></pre>
            </div>

            <div class="guide-section">
                <h3 class="guide-section-title">消費税について</h3>
                <pre><{$guide.tax}></pre>
            </div>

            <div class="guide-section">
                <h3 class="guide-section-title">返品について</h3>
                <pre><{$guide.return}></pre>
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
