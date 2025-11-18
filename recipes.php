<?php
require 'db.php';

// Get all recipes from the database
$sql = "SELECT id, title, slug, prep_time, cook_time, image_url FROM recipes ORDER BY created_at DESC";
$result = $conn->query($sql);
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
<body>

  <section class="hero">
    <img src="images/Homescreenimg.jpg" alt="Home background" class="hero-img">
    <div class="overlay"></div>

    <h1 class="logo">TSUNAM EATS</h1>

    <nav class="hero-nav">
  <ul>
    <li><a href="/IDM232/index.html">Home</a></li>
    <li><a href="/IDM232/about.html">About</a></li>
    <li><a class="active" href="/IDM232/recipes.php">Recipes</a></li>
    <li><a href="/IDM232/contact.html">Contact</a></li>
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
            // compute total time from prep + cook
            $prep  = (int)$row['prep_time'];
            $cook  = (int)$row['cook_time'];
            $total = $prep + $cook;
          ?>
          <article class="card">
            <!-- clicking image goes to the full recipe page -->
            <a href="recipe.php?slug=<?php echo urlencode($row['slug']); ?>">
              <img
                src="<?php echo htmlspecialchars($row['image_url']); ?>"
                alt="<?php echo htmlspecialchars($row['title']); ?>">
            </a>
            <h3><?php echo htmlspecialchars($row['title']); ?></h3>
            <p class="meta"><span><?php echo $total; ?> mins</span></p>
          </article>
        <?php endwhile; ?>
      <?php else: ?>
        <p>No recipes found in the database.</p>
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
    const tagBox = document.getElementById('active-tags');
    const clearAllBtn = document.getElementById('clear-all');
    const catDrop  = document.getElementById('category-dropdown');
    const filtDrop = document.getElementById('filter-dropdown');

    let selectedCategory = '';
    const selectedFilters = new Set();

    function renderTags() {
      tagBox.innerHTML = '';
      if (selectedCategory) tagBox.appendChild(makeTag('Category', selectedCategory, 'category'));
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
        if (key === 'category') selectedCategory = '';
        else selectedFilters.delete(value);
        renderTags();
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
      });
    });
    filtDrop.querySelectorAll('.drop-menu li').forEach(li => {
      li.addEventListener('click', () => {
        selectedFilters.add(li.dataset.value);
        renderTags();
        closeAll();
      });
    });

    document.addEventListener('click', closeAll);
    document.addEventListener('keydown', (e) => { if (e.key === 'Escape') closeAll(); });

    clearAllBtn.addEventListener('click', () => {
      selectedCategory = '';
      selectedFilters.clear();
      renderTags();
    });

    renderTags();
  })();
  </script>
</body>
</html>
