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

        <section class="section cart">
            <h2 class="cart-title"><i class="fa fa-shopping-cart" aria-hidden="true"></i>カートの中身</h2>

            <{if $cart.has_item}>

            <p class="incart-total-item">カート内の商品合計 ： <span class="incart-total-count"><{$cart.total_quantity|number_format}>点</span><span class="incart-total-price"><{$cart.total_price|number_format}>円</span></p>

            <table class="cart-list">
                <tr>
                    <thead>
                        <th>No.</th>
                        <th width="50%">商品情報</th>
                        <th>価格（税込）</th>
                        <th>数量</th>
                        <th width="40"></th>
                    </thead>
                </tr>
                <{section name=i loop=$cart.list}>
                <tr class="cart-list-item">
                    <td><{$cart.list[i].num}></td>
                    <td>
                        <div class="cart-item-wrap">
                            <div class="cart-item-image">
                                <a href="<{$cart.list[i].url}>"><img src="<{$cart.list[i].image_S}>" alt="<{$cart.list[i].name}>"></a>
                            </div>
                            <div class="cart-item-info">
                                <p class="cart-item-name"><{$cart.list[i].name}></p>
    
                                <{if $cart.list[i].selected_option.has_item}>
                                <div class="cart-item-option">
                                    <{section name=j loop=$cart.list[i].selected_option.list}>
                                        <span><{$cart.list[i].selected_option.list[j].title}>：<{$cart.list[i].selected_option.list[j].option_name}></span>
                                    <{/section}>
                                </div>
                                <{/if}>
                                <p class="cart-item-special"><{$cart.list[i].special_display}></p>
                            </div>
                        </div>
                    </td>
                    <td>
                        <p class="cart-item-price"><{$cart.list[i].total_price|number_format}>円</p>
                        <p class="cart-item-unit-price">単価：<{$cart.list[i].price|number_format}>円</p>
                        <p class="cart-item-point"><{$cart.list[i].total_point|number_format}>pt</p>
                    </td>
                    <td>
                        <input type="text" data-id="<{$cart.list[i].quantity_id}>" value="<{$cart.list[i].quantity}>" name="item-quantity">
                        <a href="<{$cart.list[i].quantity_url}>" class="btn quantity-change-btn">数量変更</a>
                    </td>
                    <td>
                        <a href="<{$cart.list[i].remove_url}>" class="btn item-delete-btn"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </td>
                </tr>
                <{/section}>
                <tr class="cart-total-row">
                    <td colspan="3" class="cart-total-title">商品合計</td>
                    <td colspan="2" class="cart-total-price-wrap">
                        <p class="cart-total-price"><{$cart.total_price|number_format}>円</p>
                        <p class="cart-total-point">獲得ポイント：<{$cart.total_point|number_format}>pt</p>
                    </td>
                </tr>
            </table>

            <{if $cart.is_free_shipping_enabled}>
            <div class="free-shipping-wrap">
                <{if $cart.free_shipping_price == 0}>            
                <p class="free-shipping-text">今回のお買い物は送料無料となります</p>
                <{else}>
                <p class="free-shipping-text">あと<em><{$cart.free_shipping_price|number_format}></em>円で送料無料になります</p>
                <p class="free-shipping-text"><{$cart.free_shipping_message}></p>
                <{/if}>    
            </div>
            <{/if}>    
            
            <div class="payment-btn-wrap">
                <a href="<{$cart.order_url}>" class="btn payment-btn">決済画面に進む</a>
            </div>
            <{else}>

            <p class="incart-total-item">カートに商品はありません</p>

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
