<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/auxincar/fonts/style.css" rel="stylesheet">
<link href="catalog/view/theme/auxincar/css/main.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">

<div class="above-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="phones">
                        <span>+38(098) 117 26 92</span>
                        <span>+38(098) 117 26 92</span>
                        <span>+38(098) 117 26 92</span>
                    </div>
                </div>
                <div class="col-md-6 text-right">
                    <div class="sign-block">
                        <?php if ($logged) { ?>
                        <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                        <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                        <?php } else { ?>
                        <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
                        <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main">
        <header class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="logo">
                            <?php if ($logo) { ?>
                              <?php if ($home == $og_url) { ?>
                                <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
                              <?php } else { ?>
                                <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                              <?php } ?>
                            <?php } else { ?>
                              <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                            <?php } ?>
                            <p class="company-name">AUXINCAR</p>
                            <p>твой смартфон звучит в машине</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <?php echo $search; ?>
                    </div>
                    <div class="col-md-3 text-right">
                            <?php echo $cart; ?>
                                
                    </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-9 col-md-offset-3">
                        <nav class="main-menu">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav list-unstyled">
                                    <li><a href="<?php echo $home; ?>">Главная</a></li>
                                    <?php foreach ($categories as $category) { ?>
                                        <?php if ($category['children']) { ?>
                                            <li><a href="<?php echo $category['href']; ?>">Каталог</a></li>
                                        <?php } ?>
                                    <?php } ?>
                                    <?php if ($informations) { ?>
                                        <?php foreach ($informations as $information) { ?>
                                        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                                        <?php } ?>
                                    <?php } ?>
                                    <li><a href="<?php echo $contact; ?>">Контакты</a></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
                        </nav>
                    </div>
                </div>
            </div>
            
        </header>
