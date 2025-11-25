<?php
require 'db.php';

$slug = $_GET['slug'] ?? '';
if ($slug === '') {
  die("No recipe specified.");
}

$sqlRecipe = "SELECT * FROM recipes WHERE slug = ?";
$stmtRecipe = $connection->prepare($sqlRecipe);
if (!$stmtRecipe) {
  die("Prepare failed: " . $connection->error);
}

$stmtRecipe->bind_param("s", $slug);
$stmtRecipe->execute();
$resultRecipe = $stmtRecipe->get_result();
$recipe = $resultRecipe->fetch_assoc();
$stmtRecipe->close();

if (!$recipe) {
  die("Recipe not found.");
}

$recipe_id = (int)$recipe['id'];

$sqlIng = "SELECT amount, unit, item 
  FROM ingredients 
  WHERE recipe_id = ?";
$stmtIng = $connection->prepare($sqlIng);
if (!$stmtIng) {
  die("Prepare failed: " . $connection->error);
}
$stmtIng->bind_param("i", $recipe_id);
$stmtIng->execute();
$ingredientsResult = $stmtIng->get_result();
$ingredients = [];
while ($row = $ingredientsResult->fetch_assoc()) {
  $ingredients[] = $row;
}
$stmtIng->close();
$ingredientCount = count($ingredients);


$sqlSteps = "SELECT step_number, step_text, step_image 
  FROM recipe_steps 
  WHERE recipe_id = ? 
  ORDER BY step_number ASC";
$stmtStep = $connection->prepare($sqlSteps);
if (!$stmtStep) {
  die("Prepare failed: " . $connection->error);
}
$stmtStep->bind_param("i", $recipe_id);
$stmtStep->execute();
$stepsResult = $stmtStep->get_result();
$steps = [];
while ($row = $stepsResult->fetch_assoc()) {
  $steps[] = $row;
}
$stmtStep->close();

// First image for title page  
$ingredientsCollageImage = $steps[0]['step_image'] ?? '';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title><?php echo htmlspecialchars($recipe['title']); ?> • Tsunam Eats</title>

  <link href="https://fonts.googleapis.com/css2?family=Luxurious+Script&family=Afacad:wght@400;600;700&family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="styles.css" />
  <link rel="stylesheet" href="recipes.css" />

  <style>
    :root {
      --mint: #71B69C;
      --offwhite: #f5f5f5;
      --bg: #050505;
      --step-green: #71B69C;
    }

    body {
      background-color: var(--bg);
      color: var(--offwhite);
    }

    .recipe-detail-wrap {
      max-width: 960px;
      margin: 0 auto;
      padding: 3rem 1rem 4rem;
    }

    .recipe-btn-row-left {
      text-align: left;
      margin: 1rem 0 2rem;
      padding-left: 1rem;
    }

    .recipe-btn-row-center {
      text-align: center;
      margin: 2rem 0;
    }

    .recipe-btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
      padding: 0.5rem 1.5rem;
      border-radius: 999px;
      border: 1px solid rgba(255, 255, 255, 0.4);
      background: transparent;
      color: var(--offwhite);
      font-family: "Inter", sans-serif;
      font-size: 0.95rem;
      text-decoration: none;
    }

    .recipe-btn:hover {
      background: rgba(255, 255, 255, 0.08);
    }

    .recipe-btn .arrow {
      font-size: 1.1rem;
    }

    .recipe-main-img {
      display: block;
      width: 80%;
      max-width: 750px;
      margin: 1rem auto 2.5rem;
      border-radius: 18px;
    }

    .recipe-title-block {
      text-align: center;
      margin-bottom: 2.5rem;
    }

    .recipe-title-big {
      font-family: "Luxurious Script", cursive;
      font-size: 6rem;  
      font-weight: 300;
      line-height: 1.05;
      color: var(--mint);
      margin-bottom: 0.5rem;
    }

    .recipe-subtitle {
      font-family: "Inter", sans-serif;
      font-size: 1rem;
      margin-bottom: 1.75rem;
    }

    .recipe-section-title {
      font-family: "Afacad", sans-serif;
      font-weight: 700;
      font-size: 1.6rem;
      margin-bottom: 1.25rem;
    }

    .recipe-stats-row {
      display: flex;
      justify-content: center;
      gap: 3rem;
      margin-bottom: 1.75rem;
      font-family: "Inter", sans-serif;
      font-size: 0.95rem;
    }

    .stat-block {
      text-align: center;
    }

    .stat-label {
      display: block;
      font-weight: 600;
      color: var(--mint);
      margin-bottom: 0.25rem;
    }

    .stat-value {
      display: block;
    }

    .recipe-intro {
      max-width: 700px;
      margin: 0 auto 3rem;
      font-family: "Inter", sans-serif;
      font-size: 0.95rem;
      line-height: 1.7;
    }

    .ingredients-section {
      margin-bottom: 3rem;
      text-align: left;
    }

    .ingredients-list {
      font-family: "Inter", sans-serif;
      text-align: left;
      font-size: 1.5rem;
    }

    .ingredients-list ul {
      list-style: disc;
      display: inline-block;
      text-align: left;
      margin: 0;
      font-size: 1rem;
      line-height: 1.7;
    }

    .ingredients-list li {
      margin: 0.15rem 0;
    }

    .ingredients-hero-img,
    .step-image {
      display: block;
      width: 85%;          
      max-width: 750px;     
      margin: 0.5rem auto 1.5rem;
      border-radius: 18px;
    }

    .recipe-instructions-block {
      margin-top: 2rem;
    }

    .recipe-instructions-block h3 {
      text-align: left;
      margin: 0 0 1.25rem;
    }

    .step-block {
      margin-bottom: 2.5rem;
      text-align: center;
    }

    .step-text {
      max-width: 820px;
      margin: 0 auto;
      font-family: "Inter", sans-serif;
      font-size: 0.95rem;
      line-height: 1.7;
      text-align: left;
    }

    .step-text strong {
      color: var(--offwhite);
    }

    .step-text .step-body {
      color: var(--step-green);
    }

    @media (max-width: 768px) {
      .recipe-title-big {
        font-size: 3.2rem;
      }
    }
  </style>
</head>
<body id="top">
  <section class="hero">
    <img src="images/Homescreenimg.jpg" alt="Home background" class="hero-img">
    <div class="overlay"></div>

    <h1 class="logo">TSUNAM EATS</h1>

    <nav class="hero-nav">
      <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="about.php">About</a></li>
        <li><a href="recipes.php">Recipes</a></li>
        <li><a href="contact.php">Contact</a></li>
      </ul>
    </nav>
  </section>

  <main class="recipe-detail-wrap">

    <div class="recipe-btn-row-left">
      <a href="recipes.php" class="recipe-btn">
        <span class="arrow">←</span>
        <span>Back to Recipes</span>
      </a>
    </div>

    <?php if (!empty($recipe['image_url'])): ?>
      <img
        src="<?php echo htmlspecialchars($recipe['image_url']); ?>"
        alt="<?php echo htmlspecialchars($recipe['title']); ?>"
        class="recipe-main-img"
      >
    <?php endif; ?>

    <section class="recipe-title-block">
      <h2 class="recipe-title-big">
        <?php echo htmlspecialchars($recipe['title']); ?>
      </h2>

      <?php if (!empty($recipe['subtitle'])): ?>
        <p class="recipe-subtitle">
          <?php echo htmlspecialchars($recipe['subtitle']); ?>
        </p>
      <?php endif; ?>

      <div class="recipe-stats-row">
        <div class="stat-block">
          <span class="stat-label">Ingredients</span>
          <span class="stat-value"><?php echo $ingredientCount; ?></span>
        </div>
        <div class="stat-block">
          <span class="stat-label">Prep Time</span>
          <span class="stat-value"><?php echo (int)$recipe['prep_time']; ?> mins</span>
        </div>
        <div class="stat-block">
          <span class="stat-label">Cook Time</span>
          <span class="stat-value"><?php echo (int)$recipe['cook_time']; ?> mins</span>
        </div>
        <div class="stat-block">
          <span class="stat-label">Total Time</span>
          <span class="stat-value">
            <?php echo (int)$recipe['prep_time'] + (int)$recipe['cook_time']; ?> mins
          </span>
        </div>
      </div>

      <p class="recipe-intro">
        <?php
          if (!empty($recipe['description'])) {
            echo nl2br(htmlspecialchars($recipe['description']));
          } else {
            echo 'This savory quiche combines sautéed kale, creamy ricotta, and fresh eggs in a flaky crust—paired with a crisp salad of romaine and apple. Simple, elegant, and perfect for brunch or weeknight dinner.';
          }
        ?>
      </p>
    </section>

    <section class="ingredients-section">
      <h3 class="recipe-section-title">Ingredients</h3>

      <?php if (!empty($ingredientsCollageImage)): ?>
        <img
          src="<?php echo htmlspecialchars($ingredientsCollageImage); ?>"
          alt="ingredients"
          class="ingredients-hero-img"
        >
      <?php endif; ?>

      <div class="ingredients-list">
        <ul>
          <?php foreach ($ingredients as $ing): ?>
            <li>
              <?php echo htmlspecialchars(trim($ing['amount'].' '.$ing['unit'].' '.$ing['item'])); ?>
            </li>
          <?php endforeach; ?>
        </ul>
      </div>
    </section>

    <section class="recipe-instructions-block">
      <h3 class="recipe-section-title">Instructions</h3>

      <?php foreach ($steps as $index => $step): ?>
        <article class="step-block">
          <?php if ($index > 0 && !empty($step['step_image'])): ?>
            <img
              src="<?php echo htmlspecialchars($step['step_image']); ?>"
              alt="Step <?php echo (int)$step['step_number']; ?>"
              class="step-image"
            >
          <?php endif; ?>

          <p class="step-text">
            <strong>Step <?php echo (int)$step['step_number']; ?>:</strong>
            <span class="step-body">
              <?php echo nl2br(htmlspecialchars($step['step_text'])); ?>
            </span>
          </p>
        </article>
      <?php endforeach; ?>
    </section>

    <div class="recipe-btn-row-center">
      <a href="#top" class="recipe-btn">
        <span class="arrow">↑</span>
        <span>Back to top</span>
      </a>
    </div>

  </main>
</body>
</html>
