<?php

require_once 'includes/filter-wrapper.php';

$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);

if (empty($id)) {
	header('Location: index.php');
	exit;
}

require_once 'includes/db.php';

// ->prepare() allows us to execute SQL with user input
$sql = $db->prepare('
	SELECT id, movie_title, release_date, director
	FROM movies
	WHERE id = :id
');

$sql->bindValue(':id', $id, PDO::PARAM_INT);

$sql->execute();

$results = $sql->fetch();

if (empty($results)) {
	header('Location: index.php');
	exit;
}

?><!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<title><?php echo $results['movie_title']; ?> &middot; Favourite Westerns</title>
</head>
<body>
	
	<h1><?php echo $results['movie_title']; ?></h1>
	<p>Date released: <?php echo $results['release_date']; ?></p>
	<p>Directed by: <?php echo $results['director']; ?></p>
	
</body>
</html>
