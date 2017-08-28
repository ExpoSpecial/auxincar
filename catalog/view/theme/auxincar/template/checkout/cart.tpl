<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    <div class="breadcrumbs-row">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?> <span>></span></a>
      <?php } ?>
    </div>
      <?php if ($attention) { ?>
      <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
      <?php if ($success) { ?>
      <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
      <?php if ($error_warning) { ?>
      <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
      <h1><?php echo $heading_title; ?></h1>


      <div class="checkout-block">
          <div class="title-checkout-block">
              <span>Товары в корзине:</span>
          </div>
          <div class="list-items-pr">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <table>
                  <thead>
                      <tr>
                          <td colspan="2">Товар</td>
                          <td>Цена</td>
                          <td>Количество</td>
                          <td colspan="2">Сумма</td>
                      </tr>
                  </thead>
                  <?php foreach ($products as $product) { ?>
                  <tr>
                      <td>
                          <div class="checkout-thumbnail">
                            <?php if ($product['thumb']) { ?>
                              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                            <?php } ?>
                          </div>
                      </td>
                      <td>
                          <div class="title-item-pr">
                              <h3><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>  <?php if (!$product['stock']) { ?><span class="text-danger">***</span><?php } ?></h3>
                          </div>
                      </td>
                      <td>
                          <div class="price-checkout">
                              <span><?php echo $product['price']; ?></span>
                          </div>
                      </td>
                      <td>
                          <div class="count-pr">
                              <button id="pr-minus">-</button>
                              <span id="pr-result-count"><?php echo $product['quantity']; ?></span>
                              <button id="pr-plus">+</button>
                              <input type="hidden" name="quantity[<?php echo $product['cart_id']; ?>]" id="input-quantity" value="<?php echo $product['quantity']; ?>" size="1"/>
                              <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="refresh-cart"><i class="fa fa-refresh"></i></button>
                          </div>
                      </td>
                      <td>
                          <div class="price-checkout">
                              <span><?php echo $product['total']; ?></span>
                          </div>
                      </td>
                      <td>
                          <div class="delete-row">
                              <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><span class="icon-bin"></span></button>
                          </div>
                      </td>
                  </tr>
                  <?php } ?>
              </table>
            </form>

              <div class="footer-row-product">
                  <div class="row">
                      <div class="col-sm-6 col-sm-push-6 text-right">
                          <div class="footer-price">
                              <p>Итого товаров на сумму:</p>
                              <p>
                                  <?php echo $totals[1]['text']; ?>
                              </p>
                          </div>
                      </div>
                      <div class="col-sm-6 col-sm-pull-6">
                          <div class="footer-links">
                              <a href="<?php echo $continue; ?>">Продолжить покупки</a>
                              <a href="<?php echo $checkout; ?>">Оформить заказ</a>
                          </div>
                      </div>
                  </div>
              </div>



      </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
