<h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
    <div class="col-md-4 col-sm-6">
        <div class="item-product">
            <div class="item-thumbnail">
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            </div>
            <div class="item-content">
                <div class="item-title">
                    <h3><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
                </div>
                <div class="item-price">
                    <span class="price">
                      <?php if ($product['price']) { ?>
                          <?php echo $product['price']; ?>
                      <?php } ?>
                    </span>
                    <span class="in-stock"><?php echo $product['stock']; ?></span>
                </div>
                <div class="item-inputs">
                    <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" class="y-cart"><?php echo $button_cart; ?></button>
                    <a href="" class="y-regest">Оформить без регистрации</a>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>
</div>
