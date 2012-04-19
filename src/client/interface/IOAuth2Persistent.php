<?php
/**
 * Created by JetBrains PhpStorm.
 * User: hjellek
 * Date: 4/19/12
 */
interface IOAuth2Persistent
{
    function savePersistent($session = null);

    function loadPersistent();
}
