@props(['portfolios'=>[] , 'enableAuthor'=>false] )
<div x-data="portfolioModal()" @keydown.window.escape="closeModal">
    <!-- لیست نمونه‌کارها -->
    <ul class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6">
        @foreach($portfolios as $portfolio)
            <li class="group overflow-hidden">
                <div class="cursor-pointer relative rounded-2xl shadow-xl bg-zinc-900 z-10" @click="fetchPortfolio({{ $portfolio->id }})">
                    <figure class="overflow-hidden">
                        <img src="{{ $portfolio->featured_image }}" class="rounded"
                             alt="{{$portfolio->title}}">
                        <figcaption class="p-3">
                            <span class="h3 mb-0 text-sm font-semibold">{{ $portfolio->title }}</span>
                        </figcaption>
                    </figure>
                    <div x-show="loadingId === {{ $portfolio->id }}" class="absolute inset-0 bg-black/30 flex items-center justify-center rounded ">
                        <div class="w-10 h-10 border-3 border-white border-t-transparent rounded-full animate-spin"></div>
                    </div>
                </div>
                @if($enableAuthor)
                    <div class="transition-all duration-300 md:-translate-y-32 md:group-hover:translate-y-0 py-1 px-3 bg-zinc-800 w-11/12 mx-auto rounded-b-2xl">
                        <span class="text text-sm font-semibold">
                            {{__('by')}}:
                        </span>
                        <a href="{{$portfolio->user->path()}}" class="light-link">{{$portfolio->user->name}}</a>
                    </div>
                @endif
            </li>
        @endforeach
    </ul>

    <!-- Modal -->
  @include('components.portfolio.gallery-modal')
</div>

<script>
    function portfolioModal() {
        return {
            isOpen: false,
            item: {},
            gallery: [],
            currentSlide: 0,
            intervalId: null,
            isLoading: false,
            loadingId: null,

            async fetchPortfolio(id) {
                this.isLoading = true;
                this.loadingId = id;
                try {
                    const res = await fetch(`/ajax/portfolios/get/${id}`);
                    const data = await res.json();

                    this.item = data.data; // چون resource خروجی رو داخل data میذاره
                    this.isOpen = true;
                    document.body.classList.add('overflow-hidden');
                    this.currentSlide = 0;
                    this.gallery = this.item.gallery || [];

                    // پلی اتوماتیک ویدئو
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

            closeModal() {
                if (this.$refs.videoPlayer) {
                    this.$refs.videoPlayer.pause();
                    this.$refs.videoPlayer.currentTime = 0;
                }
                this.isOpen = false;
                this.item = {};
                this.gallery = [];
                this.stopAutoSlide();
                document.body.classList.remove('overflow-hidden'); // فعال کردن اسکرول صفحه
            },

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
