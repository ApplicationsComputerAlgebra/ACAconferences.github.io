(() => {
  const header = document.querySelector('#masthead') || document.querySelector('.site-header')
  if (!header) return

  let lastY = window.pageYOffset || 0
  let ticking = false
  const threshold = 8

  function onScroll() {
    const y = window.pageYOffset || 0
    const delta = y - lastY

    // Always toggle is-scrolled
    document.body.classList.toggle('is-scrolled', y > 10)

    // If very close to top → always show header
    if (y <= 10) {
      document.body.classList.add('scrolling-up')
      document.body.classList.remove('scrolling-down')
    } else if (Math.abs(delta) > threshold) {
      if (delta < 0) {
        document.body.classList.add('scrolling-up')
        document.body.classList.remove('scrolling-down')
      } else {
        document.body.classList.add('scrolling-down')
        document.body.classList.remove('scrolling-up')
      }
    }

    lastY = y // update every scroll
    ticking = false
  }

  window.addEventListener(
    'scroll',
    () => {
      if (!ticking) {
        window.requestAnimationFrame(onScroll)
        ticking = true
      }
    },
    { passive: true }
  )
})()
