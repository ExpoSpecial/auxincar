</div>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <h4>AUXINCAR</h4>
                <p>Твой смартфон звучит в машине</p>
                <p>График работы:</p>
                <p>Понедельник-Пятница с 9.00 до 19.00</p>
            </div>
            <div class="col-md-3 col-sm-6">
                <h4>Карта сайта</h4>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $home; ?>">Главная</a></li>
                    <li><a href="">Каталог товаров</a></li>
                    <?php if ($informations) { ?>
                      <?php foreach ($informations as $information) { ?>
                      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                      <?php } ?>
                    <?php } ?>
                    <li><a href="<?php echo $contact; ?>">Контакты</a></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6">
                <h4>Контакты</h4>
                <ul class="list-unstyled">
                    <li>г.Одесса, ул. Ицхака Рабина</li>
                    <li>т. +38098117-26-92</li>
                    <li>т. +38098117-26-92</li>
                    <li>т. +38098117-26-92</li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6">
                <h4>Социальные сети</h4>
                <p class="soc-block"><a href="">vkontakte</a><a href="">facebook</a></p>
                <p>Skype: auxincar1</p>
                <p>email: <a href="">sales@auxincar.com.ua</a></p>
            </div>
        </div>
    </div>
</footer>

<script src="catalog/view/theme/auxincar/js/main.js" type="text/javascript"></script>

</body></html>