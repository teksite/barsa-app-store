@props(['portfolios'=>[] , 'enableAuthor'=>false, 'user'=>null] )

<div
    x-data="portfolioModal({
        portfolios: @js($portfolios),
        enableAuthor: {{ $enableAuthor ? 'true' : 'false' }},
        user: {{ $user ?? 'null' }}
    })"
    @keydown.window.escape="closeModal"
>

    <!-- لیست نمونه‌کارها -->
    <ul class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6">
        <template x-for="portfolio in portfolios" :key="portfolio.id">
            <li class="group overflow-hidden">
                <div
                    class="cursor-pointer relative rounded-2xl shadow-xl bg-zinc-900 z-10"
                    @click="fetchPortfolio(portfolio.id)"
                >
                    <figure class="overflow-hidden">
                        <img
                            class="rounded w-full h-auto object-cover"
                            loading="lazy"
                            :src="portfolio.featured_image"
                            :alt="portfolio.title"
                        >
                        <figcaption class="p-3">
                            <span class="h3 mb-0 text-sm font-semibold" x-text="portfolio.title"></span>
                        </figcaption>
                    </figure>

                    <!-- لودر روی کارت -->
                    <div
                        x-show="loadingId === portfolio.id"
                        class="absolute inset-0 bg-black/30 flex items-center justify-center rounded"
                    >
                        <div class="w-10 h-10 border-3 border-white border-t-transparent rounded-full animate-spin"></div>
                    </div>
                </div>

                <!-- نویسنده -->
                <template x-if="enableAuthor && portfolio.user">
                    <div class="transition-all duration-300 md:-translate-y-32 md:group-hover:translate-y-0 py-1 px-3 bg-zinc-800 w-11/12 mx-auto rounded-b-2xl">
                        <span class="text text-sm font-semibold">{{__('by')}}:</span>
                        <a :href="portfolio.user.path" class="light-link" x-text="portfolio.user.name"></a>
                    </div>
                </template>
            </li>
        </template>
    </ul>

    <!-- دکمه لود بیشتر -->
    <div class="text-center mt-6" x-show="hasMore">
        <button
            x-show="!isLoadingMore"
            @click="loadMore"
            class="px-6 py-2 bg-indigo-600 hover:bg-indigo-700 text-white rounded-lg transition"
        >
            More
        </button>
        <div x-show="isLoadingMore" class="flex justify-center">
            <div class="w-10 h-10 border-3 border-indigo-600 border-t-transparent rounded-full animate-spin"></div>
        </div>
    </div>

    <!-- Modal -->
    @include('components.portfolio.gallery-modal')
</div>

<script>
    function portfolioModal({ portfolios = [], enableAuthor = false, user = null }) {
        return {
            portfolios,
            enableAuthor,
            user,
            offset: portfolios.length,
            hasMore: true, // کنترل نمایش دکمه
            isLoading: false,
            isLoadingMore: false,
            loadingId: null,
            isOpen: false,
            item: {},
            gallery: [],
            currentSlide: 0,
            intervalId: null,

            // دریافت جزئیات نمونه‌کار
            async fetchPortfolio(id) {
                this.isLoading = true;
                this.loadingId = id;
                try {
                    const res = await fetch(`/ajax/portfolios/get/${id}`);
                    const data = await res.json();

                    // چون resource استفاده می‌کنی
                    this.item = data.data;
                    this.isOpen = true;
                    document.body.classList.add('overflow-hidden');
                    this.currentSlide = 0;
                    this.gallery = this.item.gallery || [];

                    if (this.item.type === 'video' && this.$refs.videoPlayer) {
                        this.$nextTick(() => this.$refs.videoPlayer.play());
                    }

                    if (this.gallery.length) this.startAutoSlide();
                } catch (err) {
                    console.error("خطا در دریافت داده نمونه‌کار:", err);
                } finally {
                    this.isLoading = false;
                    this.loadingId = null;
                }
            },

            // لود بیشتر
            async loadMore() {
                this.isLoadingMore = true;
                try {
                    const res = await fetch(`/ajax/portfolios/get?offset=${this.offset}${this.user ? `&user=${this.user}` : ''}`);
                    const data = await res.json();

                    if (data.data?.length) {
                        this.portfolios = [...this.portfolios, ...data.data];
                        this.offset += data.data.length;
                    } else {
                        this.hasMore = false; // دیگه چیزی نیست
                    }
                } catch (err) {
                    console.error("error in loading: ", err);
                } finally {
                    this.isLoadingMore = false;
                }
            },

            // بستن مودال
            closeModal() {
                if (this.$refs.videoPlayer) {
                    this.$refs.videoPlayer.pause();
                    this.$refs.videoPlayer.currentTime = 0;
                }
                this.isOpen = false;
                this.item = {};
                this.gallery = [];
                this.stopAutoSlide();
                document.body.classList.remove('overflow-hidden');
            },

            // مدیریت اسلاید
            nextSlide() {
                if (!this.gallery.length) return;
                this.currentSlide = (this.currentSlide + 1) % this.gallery.length;
            },
            prevSlide() {
                if (!this.gallery.length) return;
                this.currentSlide = (this.currentSlide - 1 + this.gallery.length) % this.gallery.length;
            },
            startAutoSlide() {
                this.stopAutoSlide();
                if (!this.gallery.length) return;
                this.intervalId = setInterval(() => this.nextSlide(), 5000);
            },
            stopAutoSlide() {
                if (this.intervalId) {
                    clearInterval(this.intervalId);
                    this.intervalId = null;
                }
            },
            pauseAutoSlide() {
                this.stopAutoSlide();
            }
        }
    }
</script>
