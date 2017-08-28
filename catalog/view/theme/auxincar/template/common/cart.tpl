<div id="cart" class="btn-group">
  <div class="cart-block">
    <div class="ico-main-cart">
        <span class="icon-shopping-basket"></span>
    </div>
    <div class="text-main-cart">
        <p><span class="title-main-cart">Корзина</span></p>
        <p><span class="count-main-cart"><span id="cart-total"><?php echo $text_items; ?></span></span></p>
    </div>
    <div class="but-main-cart">

    <button type="button" data-toggle="modal" class="dropdown-toggle" data-target="#modalCart">
        <span class="icon-circle-open"></span>
    </button>

    <div id="modalCart" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header"><button class="close" type="button" data-dismiss="modal"><i class="fa fa-times"></i></button></div>

          <ul class="list-unstyled">
            <?php if ($products || $vouchers) { ?>
            <li>
              <table>
                <?php foreach ($products as $product) { ?>
                <tr>
                  <td class="text-center"><?php if ($product['thumb']) { ?>
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                    <?php } ?></td>
                  <td class="text-left title-prod"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    <?php if ($product['option']) { ?>
                    <?php foreach ($product['option'] as $option) { ?>
                    <br />
                    - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                    <?php } ?>
                    <?php } ?>
                    <?php if ($product['recurring']) { ?>
                    <br />
                    - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
                    <?php } ?></td>
                  <td class="text-right">x <?php echo $product['quantity']; ?></td>
                  <td class="text-right"><?php echo $product['total']; ?></td>
                  <td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><span class="icon-bin"></span></button></td>
                </tr>
                <?php } ?>
                <?php foreach ($vouchers as $voucher) { ?>
                <tr>
                  <td class="text-center"></td>
                  <td class="text-left"><?php echo $voucher['description']; ?></td>
                  <td class="text-right">x&nbsp;1</td>
                  <td class="text-right"><?php echo $voucher['amount']; ?></td>
                  <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
                </tr>
                <?php } ?>
              </table>
            </li>
            <li>
              <div>
                <table class="table table-bordered">
                  <?php foreach ($totals as $total) { ?>
                  <tr>
                    <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
                    <td class="text-right"><?php echo $total['text']; ?></td>
                  </tr>
                  <?php } ?>
                </table>
                <p class="text-right"><a href="<?php echo $cart; ?>" class="but-auxincar"><?php echo $text_cart; ?></a>&nbsp;&nbsp;&nbsp;<a href="<?php echo $checkout; ?>" class="but-auxincar"><?php echo $text_checkout; ?></a></p>
              </div>
            </li>
            <?php } else { ?>
            <li>
              <p class="text-center"><?php echo $text_empty; ?></p>
            </li>
            <?php } ?>
          </ul>
        </div>
      </div>
    </div>

  </div>
</div>

