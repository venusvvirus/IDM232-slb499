<?php
require_once 'db.php';

if (!isset($connection) || !$connection instanceof mysqli) {
    die('Database connection not available.');
}

$category = $_GET['category'] ?? 'all';
$filter   = $_GET['filter']   ?? '';

$currentCategory = $category;
$currentFilter   = $filter;

$conditions = [];

// Category condition
if ($category !== 'all' && $category !== '') {
    $safeCategory  = $connection->real_escape_string($category);
    $conditions[]  = "r.category = '$safeCategory'";
}

// Filter conditions
if (in_array($filter, ['vegetarian', 'nut_free', 'dairy_free'], true)) {
    $col          = $connection->real_escape_string($filter);
    $conditions[] = "r.$col = 1";
}

// Base query
$sql = "
    SELECT
        r.id,
        r.title,
        r.slug,
        r.prep_time,
        r.cook_time,
        r.image_url,
        r.category,
        r.created_at,
        (r.prep_time + r.cook_time) AS total_time,
        COUNT(i.id) AS ingredient_count
    FROM recipes r
    LEFT JOIN ingredients i ON r.id = i.recipe_id
";

// WHERE conditions
if (!empty($conditions)) {
    $sql .= " WHERE " . implode(' AND ', $conditions);
}

$sql .= " GROUP BY r.id";

// Sorting based on filter
if ($filter === 'total_time') {
    $sql .= " ORDER BY total_time ASC, r.created_at DESC";
} elseif ($filter === 'ingredients') {
    $sql .= " ORDER BY ingredient_count ASC, r.created_at DESC";
} else {
    $sql .= " ORDER BY r.created_at DESC";
}

// Run query
$result = $connection->query($sql);
if (!$result) {
    die("Query error: " . $connection->error);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Recipes • Tsunam Eats</title>

  <link href="https://fonts.googleapis.com/css2?family=Luxurious+Script&family=Afacad:wght@400;600;700&family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="styles.css" />
  <link rel="stylesheet" href="recipes.css" />
</head>
<body
  data-current-category="<?php echo htmlspecialchars($currentCategory); ?>"
  data-current-filter="<?php echo htmlspecialchars($currentFilter); ?>"
>

  <section class="hero">
    <img src="images/Homescreenimg.jpg" alt="Home background" class="hero-img">
    <div class="overlay"></div>

    <h1 class="logo">TSUNAM EATS</h1>

    <nav class="hero-nav">
      <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="about.php">About</a></li>
        <li><a class="active" href="recipes.php">Recipes</a></li>
        <li><a href="contact.php">Contact</a></li>
      </ul>
    </nav>
  </section>

  <main class="recipes-wrap">
    <header class="recipes-headings">
      <h2 class="script">Recipes</h2>
      <p class="tagline">Lip Smacking, Finger Licking Good</p>
    </header>

    <div class="controls-row">
      <div class="controls-left">
        <!-- category dropdown -->
        <div class="dropdown" id="category-dropdown">
          <button class="drop-trigger" type="button" aria-haspopup="listbox" aria-expanded="false">
            <span>Category</span>
            <svg class="chev" viewBox="0 0 24 24" aria-hidden="true">
              <path d="M7 10l5 5 5-5" fill="none" stroke="currentColor" stroke-width="2"/>
            </svg>
          </button>
          <ul class="drop-menu" role="listbox" aria-label="Category options">
            <li data-value="Breakfast">Breakfast</li>
            <li data-value="Lunch">Lunch</li>
            <li data-value="Dinner">Dinner</li>
            <li data-value="Appetizer">Appetizer</li>
            <li data-value="Dessert">Dessert</li>
            <li data-value="Drink">Drink</li>
          </ul>
        </div>

        <!-- filter dropdown -->
        <div class="dropdown" id="filter-dropdown">
          <button class="drop-trigger" type="button" aria-haspopup="listbox" aria-expanded="false">
            <span>Add Filter</span>
            <svg class="chev" viewBox="0 0 24 24" aria-hidden="true">
              <path d="M7 10l5 5 5-5" fill="none" stroke="currentColor" stroke-width="2"/>
            </svg>
          </button>
          <ul class="drop-menu" role="listbox" aria-label="Filter options">
            <li data-value="Total Time (Low to High)">Total Time (Low to High)</li>
            <li data-value="Ingredients (Low to High)">Ingredients (Low to High)</li>
            <li data-value="Vegetarian">Vegetarian</li>
            <li data-value="Nut Free">Nut Free</li>
            <li data-value="Dairy Free">Dairy Free</li>
          </ul>
        </div>
      </div>

      <div class="controls-right">
        <div class="active-tags" id="active-tags" aria-live="polite">
          <span class="tags-placeholder">No filters selected</span>
        </div>
        <button class="clear-all" id="clear-all" type="button" aria-label="Clear all filters" disabled>Clear all</button>
      </div>
    </div>

    <section class="grid">
      <?php if ($result && $result->num_rows > 0): ?>
        <?php while ($row = $result->fetch_assoc()): ?>
          <?php
            $prep  = (int)$row['prep_time'];
            $cook  = (int)$row['cook_time'];
            $total = $prep + $cook;
          ?>
          <article class="card">
            <a href="recipe.php?slug=<?php echo urlencode($row['slug']); ?>">
              <img
                src="<?php echo htmlspecialchars($row['image_url']); ?>"
                alt="<?php echo htmlspecialchars($row['title']); ?>">
            </a>
            <h3><?php echo htmlspecialchars($row['title']); ?></h3>
            <p class="meta">
              <span><?php echo $total; ?> mins</span>
            </p>
          </article>
        <?php endwhile; ?>
      <?php else: ?>
        <?php if ($currentCategory !== 'all' && $currentCategory !== ''): ?>
          <article class="card card-empty">
            <h3><?php echo htmlspecialchars($currentCategory); ?> recipes to come!</h3>
            <p class="meta">
              We&apos;re still cooking up
              <?php echo strtolower(htmlspecialchars($currentCategory)); ?> ideas.
              Check back soon for new recipes.
            </p>
          </article>
        <?php else: ?>
          <article class="card card-empty">
            <h3>No recipes found</h3>
            <p class="meta">
              Try changing the filters or adding more recipes.
            </p>
          </article>
        <?php endif; ?>
      <?php endif; ?>
    </section>
  </main>

  <footer>
    <p>
      <a href="https://www.instagram.com/tsunam.eats/" target="_blank" rel="noopener noreferrer">
        @tsunam.eats
      </a>
    </p>
  </footer>

  <script>
  (() => {
    const tagBox      = document.getElementById('active-tags');
    const clearAllBtn = document.getElementById('clear-all');
    const catDrop     = document.getElementById('category-dropdown');
    const filtDrop    = document.getElementById('filter-dropdown');

    const currentCategoryFromPHP = document.body.dataset.currentCategory || 'all';
    const currentFilterFromPHP   = document.body.dataset.currentFilter   || '';

    let selectedCategory = currentCategoryFromPHP === 'all' ? '' : currentCategoryFromPHP;
    const selectedFilters = new Set();

    const filterParamFromLabel = {
      'Total Time (Low to High)': 'total_time',
      'Ingredients (Low to High)': 'ingredients',
      'Vegetarian': 'vegetarian',
      'Nut Free': 'nut_free',
      'Dairy Free': 'dairy_free'
    };

    const filterLabelFromParam = {
      'total_time': 'Total Time (Low to High)',
      'ingredients': 'Ingredients (Low to High)',
      'vegetarian': 'Vegetarian',
      'nut_free': 'Nut Free',
      'dairy_free': 'Dairy Free'
    };

    if (currentFilterFromPHP && filterLabelFromParam[currentFilterFromPHP]) {
      selectedFilters.add(filterLabelFromParam[currentFilterFromPHP]);
    }

    function renderTags() {
      tagBox.innerHTML = '';
      if (selectedCategory) {
        tagBox.appendChild(makeTag('Category', selectedCategory, 'category'));
      }
      selectedFilters.forEach(v => tagBox.appendChild(makeTag('Filter', v, 'filter')));

      if (!selectedCategory && selectedFilters.size === 0) {
        const span = document.createElement('span');
        span.className = 'tags-placeholder';
        span.textContent = 'No filters selected';
        tagBox.appendChild(span);
        clearAllBtn.disabled = true;
      } else {
        clearAllBtn.disabled = false;
      }
    }

    function makeTag(kind, value, key) {
      const tag = document.createElement('span');
      tag.className = 'tag';
      const k = document.createElement('em');
      k.className = 'tag-kind';
      k.textContent = kind + ':';
      const v = document.createElement('span');
      v.className = 'tag-value';
      v.textContent = value;
      const x = document.createElement('button');
      x.className = 'tag-x';
      x.type = 'button';
      x.textContent = '✕';

      x.addEventListener('click', () => {
        const params = new URLSearchParams(window.location.search);

        if (key === 'category') {
          selectedCategory = '';
          params.delete('category');
        } else {
          selectedFilters.delete(value);
          params.delete('filter');
        }

        window.location = 'recipes.php' + (params.toString() ? ('?' + params.toString()) : '');
      });

      tag.append(k, v, x);
      return tag;
    }

    function closeAll() {
      document.querySelectorAll('.dropdown').forEach(d => {
        d.classList.remove('open');
        d.querySelector('.drop-trigger').setAttribute('aria-expanded', 'false');
      });
    }

    document.querySelectorAll('.dropdown .drop-trigger').forEach(btn => {
      btn.addEventListener('click', (e) => {
        e.stopPropagation();
        const dd = btn.closest('.dropdown');
        const willOpen = !dd.classList.contains('open');
        closeAll();
        if (willOpen) {
          dd.classList.add('open');
          btn.setAttribute('aria-expanded', 'true');
        }
      });
    });

    catDrop.querySelectorAll('.drop-menu li').forEach(li => {
      li.addEventListener('click', () => {
        selectedCategory = li.dataset.value;
        renderTags();
        closeAll();

        const params = new URLSearchParams(window.location.search);
        params.set('category', selectedCategory);
        window.location = 'recipes.php?' + params.toString();
      });
    });

    filtDrop.querySelectorAll('.drop-menu li').forEach(li => {
      li.addEventListener('click', () => {
        const label = li.dataset.value;
        const param = filterParamFromLabel[label];
        if (!param) return;

        selectedFilters.clear();
        selectedFilters.add(label);
        renderTags();
        closeAll();

        const params = new URLSearchParams(window.location.search);
        params.set('filter', param);
        window.location = 'recipes.php?' + params.toString();
      });
    });

    document.addEventListener('click', closeAll);
    document.addEventListener('keydown', (e) => { if (e.key === 'Escape') closeAll(); });

    clearAllBtn.addEventListener('click', () => {
      selectedCategory = '';
      selectedFilters.clear();
      renderTags();

      const params = new URLSearchParams(window.location.search);
      params.delete('category');
      params.delete('filter');
      window.location = 'recipes.php';
    });

    renderTags();
  })();
  </script>
</body>
</html>
