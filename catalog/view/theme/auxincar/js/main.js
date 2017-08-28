$(document).ready(function() {

    $(function() {
        var $plus = $("#pr-plus"),
            $minus = $("#pr-minus"),
            $fieldCount = $('#input-quantity'),
            $result = $("#pr-result-count");

        $minus.click(function () {
            var count = parseInt($result.text()) - 1;
            count = count < 1 ? 1 : count;
            $result.text(count);
            $fieldCount.val(count);
            return false;
        });
        $plus.click(function () {
            $result.text(parseInt($result.text()) + 1);
            $fieldCount.val(parseInt($fieldCount.val()) + 1);
            return false;
        });
    });
    


    $(function() {
        var $sideAnim = $('.sidebar-block .list-unstyled'),
            $sideHeight = $sideAnim.height();

        if($(window).width() <= 992) {
            $(window).resize(function(){
                if($(window).width() <= 992) {
                    $sideAnim.removeClass('in');
                } else {
                    $sideAnim.addClass('in');
                }
            });
        } else {
            $sideAnim.addClass('in').css('height', 0 + 'px');
            setTimeout(function(){
                $sideAnim.css('height', $sideHeight + 'px');
            }, 1);
        }
    });



});


