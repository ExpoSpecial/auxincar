<?php if ($categories) { ?>
  <div class="sidebar-block">
      <button type="button" data-toggle="collapse" data-target="#catalog" class="but-block-sidebar">
              <p>Каталог<span class="icon-circle-down"></span></p>
      </button>
      <ul id="catalog" class="list-unstyled collapse">
            <?php foreach ($categories as $category) { ?>
                <?php if ($category['children']) { ?>

                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                        <?php foreach ($children as $child) { ?>
                  <?php if (!isset($child['children_lv3']) && $child['children_lv3']) { ?>
                                
                            <li><a data-toggle="collapse" data-target="#<?php echo $child['name']; ?>"><?php echo $child['name']; ?><i class="ic-chevron-down"></i></i></a>
                                    <?php foreach (array_chunk($child['children_lv3'], ceil(count($child['children_lv3']) / $child['column'])) as $children_lv3) { ?>
                                        <ul class="list-unstyled collapse" id="<?php echo $child['name']; ?>">
                                            <?php foreach ($children_lv3 as $child_lv3) { ?>
                                                <li><a href="<?php echo $child_lv3['href']; ?>"> - <?php echo $child_lv3['name']; ?></a></li>
                                            <?php } ?>
                                        </ul>
                                    <?php } ?>
                                </li>

                            <?php } else { ?>
                              <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                            <?php } ?>

                        <?php } ?>
                      <?php } ?>

                <?php } else { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>

            <?php } ?>
      </ul>
  </div>
  <?php } ?>


  
