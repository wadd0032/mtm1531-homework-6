<?php

require_once 'includes/filter-wrapper.php';
require_once 'includes/db.php';

$results = $db->query('
	SELECT id, movie_title, release_date, director
	FROM movies
	ORDER BY movie_title ASC
');

?><!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<title>Favourite Westerns</title>
</head>
<body>
	
	<a href="add.php">Add a Movie!</a>
	
	<ul>

	<?php foreach ($results as $movie) : ?>
		<li>
			<a href="single.php?id=<?php echo $movie['id']; ?>"><?php echo $movie['movie_title']; ?></a>
			&bull;
			<a href="edit.php?id=<?php echo $movie['id']; ?>">Edit</a>
			<a href="delete.php?id=<?php echo $movie['id']; ?>">Delete</a>
		</li>
	<?php endforeach; ?>
	</ul>
	
</body>
</html>
