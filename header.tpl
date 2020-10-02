<p class="shop-name">
    <{if $shop.logo_url}>
        <a href="<{$url.top}>"><img src="<{$shop.logo_url}>" alt="<{$shop.name}>"></a>
    <{else}>
        <p><a href="<{$url.top}>"><{$shop.name}></a></p>
    <{/if}>
</p>

<ul class="account-nav">
    <{if $member.is_logged_in}>
        <li><p class="member-name"><em><{$member.name}></em>[ID:<{$member.id}>]さま</p><p class="member-status member-status-<{$member.group_id}>">会員ランク：<{$member.group_name}></p><p class="member-point"><{$member.point|number_format}>pt</p><a href="<{$url.logout}>">ログアウト</a></li>
        <li><a href="<{$url.mypage}>">マイページ</a></li>
    <{else}>
        <li><a href="<{$url.login}>">ログイン</a></li>
        <li><a href="<{$url.member_entry}>">新規会員登録</a></li>
        <li><a href="<{$url.mypage}>">マイページ</a></li>
    <{/if}>
</ul>

<div class="header-cart">
    <a href="<{$url.cart}>" class="header-incart-switch">カート
    <{if $cart.has_item}><span class="header-cart-count"><{$cart.total_quantity}></span><{/if}></a>
</div>

<ul class="global-nav">
    <li><a href="<{$url.top}>">ホーム</a></li>
    <li><a href="<{$url.guide}>">利用案内</a></li>
    <li><a href="<{$url.support}>">お問い合わせ</a></li>
</ul>