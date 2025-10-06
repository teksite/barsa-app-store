@props(['images' => []])


<div x-data="portfolioModal()" @keydown.window.escape="closeModal" class="mx-auto text-center">
    <button type="button"
            class=" rounded flex items-center justify-center gap-3 mx-auto my-12"
            @click="openModal({ title: 'Gallery', gallery: {{ json_encode($images) }} })">


            <img src="{{$images[0]}}" alt="تصاویر این نرم افزار" width="150" height="100" fetchpriority="low" decoding="async" loading="lazy">
           @isset($images[1])
            <img src="{{$images[1]}}" alt="تصاویر این نرم افزار" width="150" height="100" fetchpriority="low" decoding="async" loading="lazy">
           @endisset
    </button>

    @include('components.portfolio.gallery-modal')
</div>
<script>
    function portfolioModal() {
        return {
            isOpen: false,
            title: '',
            gallery: [],
            currentSlide: 0,
            intervalId: null,

            openModal(data) {
                this.title = data.title || '';
                this.gallery = data.gallery || [];
                this.isOpen = true;
                document.body.classList.add('overflow-hidden');
                this.currentSlide = 0;
                if (this.gallery.length) this.startAutoSlide();
            },

            closeModal() {
                this.isOpen = false;
                this.gallery = [];
                this.stopAutoSlide();
                document.body.classList.remove('overflow-hidden');
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
