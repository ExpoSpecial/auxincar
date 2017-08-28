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
    <div class="info-mess"></div>
      <div class="title-page-row">
          <h1>Каталог: <span><?php echo $heading_title; ?></span></h1>
      </div>

      <?php if ($categories) { ?>
      <div class="row">
        <?php foreach ($categories as $category) { ?>
        <div class="col-md-4 col-sm-6">
            <div class="item-cat">
                <a href="<?php echo $category['href']; ?>">
                    <div class="cat-thumbnail">
                      <?php if ($category['thumb']) { ?>
                        <img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" />
                      <?php } ?>
                    </div>
                    <h4><?php echo $category['name']; ?></h4>
                </a>
            </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>


      <?php if ($products) { ?>
      <div class="row-sorting">
        <div class="row">
          <div class="col-md-offset-5 col-md-4 col-xs-6">
            <div class="form-group input-group input-group-sm">
              <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
              <select id="input-sort" class="form-control" onchange="location = this.value;">
                <?php foreach ($sorts as $sorts) { ?>
                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="col-md-3 col-xs-6">
            <div class="form-group input-group input-group-sm">
              <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
              <select id="input-limit" class="form-control" onchange="location = this.value;">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
        </div>
      </div>
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
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
