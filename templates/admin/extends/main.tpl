<!doctype html>
<html lang="es">
<head>
    <base href="{$baseUrl}"/>
    <meta charset="UTF-8">
    <title>Sistema de Control Dental</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery.dataTables.css">
</head>
<body>
    {include "admin/include/navigation.tpl"}
    <div class="container">
        {block "content"}
            No Content to Display.
        {/block}
    </div>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery.dataTables.js"></script>
    <script>
        $(document).ready(function () {
            $('[data-toggle=table]').each(function () {
                var table = this;
                $(this).dataTable();
                $(this).find('tfoot th').each(ufunction () {
                    var title = $(table).find('thead th').eq($(this).index()).text();
                    $(this).html('<input type="text" placeholder="Buscar por ' + title + '" />');
                });
            });
        });
    </script>
</body>
</html>