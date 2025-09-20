import Chart from 'chart.js/auto';
import Swiper from 'swiper';
import { Autoplay, Navigation, Pagination } from 'swiper/modules';
import 'swiper/css';
import 'swiper/css/pagination';
import ScrollReveal from 'scrollreveal';

/* ---------------------------
   Utility helpers
   --------------------------- */
const $ = (sel, ctx = document) => ctx.querySelector(sel);
const $$ = (sel, ctx = document) => Array.from(ctx.querySelectorAll(sel));
const rafThrottle = (fn) => {
    let locked = false;
    return (...args) => {
        if (locked) return;
        locked = true;
        requestAnimationFrame(() => {
            fn(...args);
            locked = false;
        });
    };
};

/* ---------------------------
   Lazy init helpers
   - Use IntersectionObserver to init heavy widgets when they are visible
   --------------------------- */
function lazyInit(selector, initFn, options = {}) {
    const el = document.querySelector(selector);
    if (!el) return null;
    if ('IntersectionObserver' in window) {
        const io = new IntersectionObserver((entries, obs) => {
            entries.forEach(e => {
                if (e.isIntersecting) {
                    initFn(el);
                    obs.disconnect();
                }
            });
        }, options);
        io.observe(el);
        return io;
    } else {
        // fallback - init immediately
        initFn(el);
        return null;
    }
}

/* ---------------------------
   Chart (lazy init when in view)
   --------------------------- */
function initRadarChart(container) {
    const canvas = container;
    const ctx = canvas.getContext('2d');
    if (!ctx) return;

    const data = {
        labels: ['Motivation', 'Team Spirit', 'Punctuality', 'Creativity', 'Adaptability', 'Problem Solving'],
        datasets: [{
            data: [92, 88, 95, 90, 85, 93],
            fill: true,
            backgroundColor: 'rgba(54, 162, 235, 0.2)',
            borderColor: 'rgb(54, 162, 235)',
            pointBackgroundColor: 'rgb(54, 162, 235)',
            pointBorderColor: '#fff'
        }]
    };

    const config = {
        type: 'radar',
        data,
        options: {
            responsive: true,
            plugins: { legend: { display: false } },
            scales: {
                r: {
                    angleLines: { color: '#555' },
                    grid: { color: '#555' },
                    pointLabels: { color: '#fff' },
                    ticks: { color: '#fff', backdropColor: 'transparent' },
                    suggestedMin: 0,
                    suggestedMax: 100
                }
            },
            animation: { duration: 600, easing: 'easeOutQuart' }
        }
    };

    // Chart.js manages its own canvas drawing; create instance
    new Chart(ctx, config);
}

/* ---------------------------
   Swiper init factory
   - single function to create swipers (reduces repetition)
   --------------------------- */
function createSwiper(selector, opts = {}) {
    const container = document.querySelector(selector);
    if (!container) return null;
    const defaultOpts = {
        modules: [Autoplay, Navigation],
        loop: true,
        centeredSlides: !!opts.centeredSlides,
        autoplay: opts.autoplay ?? { delay: 2500, disableOnInteraction: false },
    };
    const finalOpts = Object.assign({}, defaultOpts, opts);
    return new Swiper(container, finalOpts);
}

/* ---------------------------
   GlowEffect (optimized)
   - throttle pointermove with RAF
   - use CSS variables but avoid layout reads inside the pointer handler
   --------------------------- */
class GlowEffect {
    constructor(config = {}) {
        this.cfg = Object.assign({
            proximity: 40,
            opacity: 0,
        }, config);

        this.cards = $$('.glow_box');
        this.glowCards = $$('.glow_card');

        this.handleBoxMove = rafThrottle(this.handleBoxMove.bind(this));
        this.handleCardMove = rafThrottle(this.handleCardMove.bind(this));
        this.init();
    }

    init() {
        if (this.cards.length) {
            this.cards.forEach(card => {
                // pointermove is high-frequency: throttle via RAF wrapper
                card.addEventListener('pointermove', (e) => this.handleBoxMove(e, card));
                // small optimization: pointerenter/leave to toggle active quickly
                card.addEventListener('pointerleave', () => card.style.setProperty('--active', this.cfg.opacity));
            });
        }

        if (this.glowCards.length) {
            this.glowCards.forEach(g => {
                g.addEventListener('pointermove', (e) => this.handleCardMove(e, g));
                g.addEventListener('pointerleave', () => {
                    g.style.removeProperty('--x'); g.style.removeProperty('--y');
                });
            });
        }
    }

    handleBoxMove(event, card) {
        // read bounding rect once
        const rect = card.getBoundingClientRect();

        const within = (
            event.clientX > rect.left - this.cfg.proximity &&
            event.clientX < rect.right + this.cfg.proximity &&
            event.clientY > rect.top - this.cfg.proximity &&
            event.clientY < rect.bottom + this.cfg.proximity
        );

        card.style.setProperty('--active', within ? 1 : this.cfg.opacity);

        const centerX = rect.left + rect.width * 0.5;
        const centerY = rect.top + rect.height * 0.5;
        let angle = Math.atan2(event.clientY - centerY, event.clientX - centerX) * 180 / Math.PI;
        if (angle < 0) angle += 360;
        // use CSS variable for rotation (no layout)
        card.style.setProperty('--start', `${angle + 90}`);
    }

    handleCardMove(event, glowCard) {
        // use client coords and set as CSS variables (no layout forced)
        glowCard.style.setProperty('--x', `${event.clientX}px`);
        glowCard.style.setProperty('--y', `${event.clientY}px`);
    }
}

/* ---------------------------
   Semicircle Slider (optimized)
   - compute item positions on resize only (ResizeObserver)
   - animate dot with RAF using transforms (no left/top writes per frame)
   - stop animation when tab hidden
   --------------------------- */
function initSemicircleSlider(selector = '.semicircleSlider') {
    const container = document.querySelector(selector);
    if (!container || window.innerWidth < 600) return;

    const items = $$('.semicircleSlider-item', container);
    const dot = $('#dot', container);
    if (!items.length || !dot) return;

    // cache sizes
    let containerRect = container.getBoundingClientRect();
    let centerX = containerRect.width / 2;
    let centerY = containerRect.height;
    let radius = containerRect.width / 2;

    // store item centers (relative to container)
    const itemCenters = [];

    function computePositions() {
        containerRect = container.getBoundingClientRect();
        centerX = containerRect.width / 2;
        centerY = containerRect.height;
        radius = containerRect.width / 2;

        itemCenters.length = 0;
        items.forEach((item, i) => {
            const angle = items.length === 1 ? Math.PI / 2 : Math.PI * (i / (items.length - 1));
            const x = centerX + radius * Math.cos(angle);
            const y = centerY - radius * Math.sin(angle) - (centerY / 6);
            // position element using transform for minimal layout impact
            item.style.transform = `translate(${x}px, ${y}px) translate(-50%, -50%)`;
            const rect = item.getBoundingClientRect();
            itemCenters.push({
                cx: rect.left + rect.width / 2,
                cy: rect.top + rect.height / 2,
                radius: Math.max(rect.width, rect.height) / 2,
                el: item
            });
        });
    }

    // initial compute
    computePositions();

    // recompute on resize (use ResizeObserver when available)
    if ('ResizeObserver' in window) {
        const ro = new ResizeObserver(() => computePositions());
        ro.observe(container);
    } else {
        window.addEventListener('resize', rafThrottle(computePositions), { passive: true });
    }

    let angle = 0;
    let running = true;

    function animate() {
        if (!running) return;
        // compute dot center
        const x = centerX + radius * Math.cos(angle);
        const y = centerY - radius * Math.sin(angle);

        // place dot by transform (no layout)
        dot.style.transform = `translate(${x}px, ${y}px) translate(-50%, -50%)`;

        // proximity check: compare with cached centers
        for (const c of itemCenters) {
            const dx = (c.cx) - (x + containerRect.left);
            const dy = (c.cy) - (y + containerRect.top);
            const dist = Math.hypot(dx, dy);
            if (dist < c.radius) c.el.classList.add('active'); else c.el.classList.remove('active');
        }

        angle += 0.01;
        if (angle > Math.PI) angle = 0;
        requestAnimationFrame(animate);
    }

    // visibility control to save CPU
    function handleVis() {
        if (document.hidden) running = false;
        else {
            if (!running) {
                running = true;
                requestAnimationFrame(animate);
            }
        }
    }
    document.addEventListener('visibilitychange', handleVis);

    // start
    requestAnimationFrame(animate);
}

/* ---------------------------
   Scroll reveal replacement / controlled init
   - We keep ScrollReveal but init lazily for performance
   --------------------------- */
function initScrollReveal() {
    // configure once
    const sr = ScrollReveal();
    sr.reveal('.card-reveal', { easing: "ease-in", delay: 300, duration: 1500 });
    sr.reveal('.text-reveal-from-top', {
        delay: 125, duration: 1500, opacity: 0, distance: "50%", origin: "top",
    });
    sr.reveal('.text-reveal-from-left', {
        delay: 125, duration: 1500, opacity: 0, distance: "50%", origin: "left"
    });
}

/* ---------------------------
   App init (DOMContentLoaded)
   - lazy inits, cached DOM, low-overhead handlers
   --------------------------- */
document.addEventListener('DOMContentLoaded', () => {
    // Init lightweight things immediately
    new GlowEffect({ proximity: 40, opacity: 0 });

    // Swipers (init immediately because lightweight)
    createSwiper('.portfolioSwiper', {
        modules: [Autoplay, Navigation],
        slidesPerView: 1,
        spaceBetween: 10,
        centeredSlides: true,
        breakpoints: {
            640: { slidesPerView: 2, spaceBetween: 20 },
            768: { slidesPerView: 3, spaceBetween: 10 },
            1024: { slidesPerView: 5, spaceBetween: 10 }
        },
        navigation: { nextEl: ".portfolioSwiper-swiper-button-next", prevEl: ".portfolioSwiper-swiper-button-prev", },
    });

    createSwiper('.serviceSwiper', {
        modules: [Autoplay, Navigation],
        slidesPerView: 1,
        spaceBetween: 20,
        loop: true,
        centeredSlides: false,
        breakpoints: {
            640: { slidesPerView: 2, spaceBetween: 20 },
            768: { slidesPerView: 3, spaceBetween: 20 },
            1024: { slidesPerView: 5, spaceBetween: 20 }
        },
        navigation: {
            nextEl: ".serviceSwiper-swiper-button-next",
            prevEl: ".serviceSwiper-swiper-button-prev",
        },
    });

    createSwiper('.testimonialSwiper', {
        modules: [Autoplay, Pagination],
        direction: 'vertical',
        slidesPerView: 1,
        pagination: { el: '.testimonialSwiper-swiper-pagination', clickable: true }
    });

    createSwiper('.feedbackSwiper', {
        modules: [Autoplay, Pagination, Navigation],
        slidesPerView: 1,
        spaceBetween: 10,
        centeredSlides: true,
        pagination: { el: '.feedbackSwiper-swiper-pagination', clickable: true },
        navigation: { nextEl: ".feedbackSwiper-swiper-button-next", prevEl: ".feedbackSwiper-swiper-button-prev", },

    });

    // lazy init chart when visible (saves work on initial load)
    lazyInit('#personEager', (el) => initRadarChart(el), { rootMargin: '200px' });

    // lazy init ScrollReveal when main content near viewport
    lazyInit('main, .content, .portfolio', () => initScrollReveal(), { rootMargin: '300px' });

    // semicircle slider (init if exists)
    initSemicircleSlider();

    // performance: pause heavy animations when page hidden
    document.addEventListener('visibilitychange', () => {
        // Swiper autoplay pause handled by Swiper; for our animations we used visibility checks inside funcs
        // If you have custom intervals/timeouts, clear/pause them here
    }, { passive: true });
});
