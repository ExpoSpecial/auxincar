<?php if ($modules) { ?>
<div class="col-md-3">
    <div class="sidebar">
        
          <?php foreach ($modules as $module) { ?>
          <?php echo $module; ?>
        <?php } ?>

        
        <div class="sidebar-block">
            <button type="button" data-toggle="collapse" data-target="#manufacturer" class="but-block-sidebar">
                    <p>Производители<span class="icon-circle-down"></span></p>
            </button>
            <ul id="manufacturer" class="list-unstyled collapse">
                <?php if ($manufacturers) { ?>
                    <?php foreach ($manufacturers as $manufacturer) { ?>
                      <li>
                          <a href="<?php echo $manufacturer['href']; ?>">
                
                          <?php echo $manufacturer['name']; ?>
                          
                          </a>
                      </li>
                    <?php } ?>               
                <?php } ?>
            </ul>
        </div>
    </div>
</div>
<?php } ?>