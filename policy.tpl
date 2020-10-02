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
            <span class="breadcrumb-item">プライバシーポリシー</span>
        </div>

        <section class="section policy">
            <h2 class="section-title">プライバシーポリシー</h2>
            <div class="pre-wrap"><pre><{$policy.content}></pre></div>
        </section>

        <{if $policy.system_content}>
        <section class="section policy">
            <div class="pre-wrap"><pre><{$policy.system_content}></pre></div>
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
