<?php

require 'inc/functions.php';

htmlhead();
?>
    <div class="header">
        <?php navbar(); ?>    
    </div>
    <div id="main-container">
        <div id="main-left">
            <?php displayTeams(); ?>
        </div>
        <div id="main-center">
            <?php displayHeroes(); ?>
        </div>
        <div id="main-right">
            <?php displayMember(); ?>
        </div>
    </div>
        <?php htmlFooter(); ?>
</body>
</html>