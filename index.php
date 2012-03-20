<?php

require_once 'includes/filter-wrapper.php';
require_once 'includes/db.php';

// `->exec()` allows us to perform SQL and NOT expect results(insert)
// `->query()` allows us to perform SQL and expect results(select)
$results = $db->query('
	SELECT id, movie_title, release_date, director
	FROM movies
	ORDER BY movie_title ASC
');

?><!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<title>MTM1531 - Homework 6 - Extended Movie Browser by Trish Dupelle</title>
    <link href="css/general.css" rel="stylesheet">
</head>
<body>
	<h1>Le Movie Browser</h1>
	<a href="add.php">Add a Movie</a>
	<ul>

	
	<?php foreach ($results as $movie) : ?>
		<li> 
        <div class="item">
			<div class="movie-title"><a href="single.php?id=<?php echo $movie['id']; ?>"><?php echo $movie['movie_title']; ?></a></div>
			
			<div class="delete">
				&bull; <a href="delete.php?id=<?php echo $movie['id']; ?>">Delete</a>
				&bull; <a href="edit.php?id=<?php echo $movie['id']; ?>">Edit</a>
			</div>
			
			
		</div>
        </li>
	<?php endforeach; ?>
	</ul>
	
</body>
</html>
