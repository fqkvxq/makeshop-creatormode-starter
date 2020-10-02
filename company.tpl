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
            <span class="breadcrumb-item">運営会社</span>
        </div>

        <section class="section company">
            <h2 class="section-title">運営会社</h2>

            <div class="company-wrap">
                <{if $company.image_url}>
                <div class="company-image">
                    <img src="<{$company.image_url}>">
                </div>
                <{/if}>
                <div class="company-content">
                    <pre><{$company.content}></pre>
                </div>
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
