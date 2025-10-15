<div x-show="isOpen" x-cloak
     class="fixed inset-0 bg-black/70 flex items-center justify-center z-50"
     x-transition
     @click.self="closeModal" style="display: none">
    <div class="bg-white rounded-lg shadow-lg max-w-3xl w-11/12 max-h-[90vh] overflow-y-auto relative">
        <div class="flex items-center justify-between border-b border-zinc-700 px-3 py-2">
            <h2 class="text-xl font-bold" x-text="title"></h2>
            <button @click="closeModal" aria-label="close modal" class="text-red-600">
                ✕
            </button>
        </div>

        <div class="p-6">
            <template x-if="gallery.length">
                <div class="relative w-full h-96 overflow-hidden rounded-lg"
                     @mouseenter="pauseAutoSlide"
                     @mouseleave="startAutoSlide">

                    <template x-for="(image, index) in gallery" :key="index">
                        <img :src="image"
                             class="absolute inset-0 w-full h-full object-contain transition-opacity duration-700"
                             :class="currentSlide === index ? 'opacity-100' : 'opacity-0'">
                    </template>

                    <button class="absolute top-1/2 left-2 -translate-y-1/2 bg-black/50 text-white px-2 py-1 rounded-full"
                            @click="prevSlide">‹</button>
                    <button class="absolute top-1/2 right-2 -translate-y-1/2 bg-black/50 text-white px-2 py-1 rounded-full"
                            @click="nextSlide">›</button>
                </div>
            </template>
        </div>
    </div>
</div>
