<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css"
              integrity="2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj" crossorigin="anonymous">
        <title>Memories</title>
    </head>

    <body>
        <div class="container">
            <h1 class="text-center font-italic text-success fixed-top mx-auto"> Форум </h1>
            <form action="" method="post">
                <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Автор</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" placeholder="Имя" name = "name">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Тема статьи</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" placeholder="Тема статьи" name = "title">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Статья</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" placeholder="Статья" name = "text">
                    </div>
                </div>
                <p><input type = "submit" class="btn btn-outline-success"/></p>
            </form>
        </div>
        <?php
            try {
                $dbh = new PDO('mysql:host=localhost;dbname=forum', root, "");
                $dbh->query('insert into topic values (2, htmlspecialchars($_POST[\'text\'])) ');
                /*foreach($dbh->query('SELECT * from topic') as $row) {
                    print_r($row);
                }*/
                $dbh = null;
            } catch (PDOException $e) {
                print "Error!: " . $e->getMessage() . "<br/>";
                die();
            }

		?>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js"
                integrity="VjEeINv9OSwtWFLAtmc4JCtEJXXBub00gtSnszmspDLCtC0I4z4nqz7rEFbIZLLU" crossorigin="anonymous">
        </script>
    </body>
</html>



