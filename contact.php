<?php
// ---------- SIMPLE CONTACT / SUBSCRIBE HANDLER ----------
$errors  = [];
$success = false;

$name    = '';
$email   = '';
$message = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $name    = trim($_POST['name'] ?? '');
  $email   = trim($_POST['email'] ?? '');
  $message = trim($_POST['message'] ?? '');

  if ($name === '') {
    $errors[] = 'Please enter your name.';
  }
  if ($email === '' || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors[] = 'Please enter a valid email address.';
  }

  if (empty($errors)) {
    // TODO: change this to your real email
    $to      = 'you@example.com';
    $subject = 'New Tsunam Eats Subscriber';
    $body    = "Name: {$name}\nEmail: {$email}\n\nMessage:\n{$message}";
    $headers = "From: noreply@tsunameats.local\r\nReply-To: {$email}";

    // Suppress errors from mail() in case it's not configured on local dev
    @mail($to, $subject, $body, $headers);

    $success = true;
  }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Contact • Tsunam Eats</title>

  <link href="https://fonts.googleapis.com/css2?family=Luxurious+Script&family=Afacad:wght@400;600;700&family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="styles.css" />
  <link rel="stylesheet" href="contact.css" />
</head>
<body>

  <section class="hero">
    <img src="images/Homescreenimg.jpg" alt="Home background" class="hero-img">
    <div class="overlay"></div>

    <h1 class="logo">TSUNAM EATS</h1>

    <nav class="hero-nav">
      <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="about.php">About</a></li>
        <li><a href="recipes.php">Recipes</a></li>
        <li><a class="active" href="contact.php">Contact</a></li>
      </ul>
    </nav>
  </section>

  <main class="contact-wrap" id="contact">
    <header class="contact-headings" <?php if ($success) echo 'style="display:none"'; ?>>
      <h2 class="script">Contact</h2>
      <p class="tagline">&amp; Never Miss a Flood of Recipes</p>
    </header>

    <!-- FORM VIEW -->
    <section class="form-card" id="form-view" aria-live="polite" <?php if ($success) echo 'hidden'; ?>>
      <?php if (!empty($errors)): ?>
        <div class="form-errors">
          <ul>
            <?php foreach ($errors as $err): ?>
              <li><?php echo htmlspecialchars($err); ?></li>
            <?php endforeach; ?>
          </ul>
        </div>
      <?php endif; ?>

      <form id="contact-form" method="post" action="contact.php" novalidate>
        <label class="field">
          <span>Your Name</span>
          <input
            type="text"
            name="name"
            required
            placeholder="Enter your name"
            value="<?php echo htmlspecialchars($name); ?>"
          />
        </label>

        <label class="field">
          <span>Your Email</span>
          <input
            type="email"
            name="email"
            required
            placeholder="name@example.com"
            value="<?php echo htmlspecialchars($email); ?>"
          />
        </label>

        <label class="field">
          <span>Message (Optional)</span>
          <textarea
            name="message"
            rows="6"
            placeholder="Say hello!"
          ><?php echo htmlspecialchars($message); ?></textarea>
        </label>

        <div class="actions">
          <button type="submit" class="submit">Submit &amp; Subscribe</button>
        </div>
      </form>
    </section>

    <!-- THANK YOU VIEW -->
    <section class="thankyou" id="thanks-view" <?php if (!$success) echo 'hidden'; ?>>
      <h2 class="thanks-script">Thank You!</h2>
      <p class="thanks-sub">We Will Get Back to You Shortly</p>

      <button
        class="return"
        id="return-btn"
        type="button"
        aria-label="Return to form"
        onclick="window.location.href='contact.php';"
      >
        <span class="return-arrow">←</span>
        <span class="return-text">Return</span>
      </button>
    </section>
  </main>

  <footer>
    <p>
      <a href="https://www.instagram.com/tsunam.eats/" target="_blank" rel="noopener noreferrer">
        @tsunam.eats
      </a>
    </p>
  </footer>

</body>
</html>

