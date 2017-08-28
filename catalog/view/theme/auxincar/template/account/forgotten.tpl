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
    <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
      <h1><?php echo $heading_title; ?></h1>
      <p><?php echo $text_email; ?></p>
      <div class="register-block">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
          <fieldset>
            <legend><?php echo $text_your_email; ?></legend>
            <div class="required">
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email"/>
            </div>
          </fieldset>
          <div class="buttons clearfix">
            <div class="pull-left"><a href="<?php echo $back; ?>" class="but-auxincar"><?php echo $button_back; ?></a></div>
            <div class="pull-right">
              <input type="submit" value="<?php echo $button_continue; ?>" class="but-auxincar" />
            </div>
          </div>
        </form>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>