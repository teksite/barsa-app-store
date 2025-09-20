<div
    x-show="isOpen"
    class="fixed inset-0 bg-black/70 flex items-center justify-center z-50 backdrop-blur-lg"
    x-transition
    @click.self="closeModal">
    <div class="bg-zinc-900 rounded-lg shadow-lg max-w-3xl w-11/12 max-h-[90vh] overflow-y-auto relative">
        <div class="flex items-center justify-between border-outline  px-3 py-1 ">
            <div
                class="text-second_color/50 bg-second_color_alt/50 text-info flex items-center justify-center rounded-full p-1 ">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="size-6"
                     aria-hidden="true">
                    <path fill-rule="evenodd"
                          d="M18 10a8 8 0 1 1-16 0 8 8 0 0 1 16 0Zm-7-4a1 1 0 1 1-2 0 1 1 0 0 1 2 0ZM9 9a.75.75 0 0 0 0 1.5h.253a.25.25 0 0 1 .244.304l-.459 2.066A1.75 1.75 0 0 0 10.747 15H11a.75.75 0 0 0 0-1.5h-.253a.25.25 0 0 1-.244-.304l.459-2.066A1.75 1.75 0 0 0 9.253 9H9Z"
                          clip-rule="evenodd"></path>
                </svg>
            </div>
            <button @click="closeModal" aria-label="close modal" class="text-red-600">
                <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"
                     class="h-5 w-5">
                    <path fill-rule="evenodd"
                          d="M5.47 5.47a.75.75 0 011.06 0L12 10.94l5.47-5.47a.75.75 0 111.06 1.06L13.06 12l5.47 5.47a.75.75 0 11-1.06 1.06L12 13.06l-5.47 5.47a.75.75 0 01-1.06-1.06L10.94 12 5.47 6.53a.75.75 0 010-1.06z"
                          clip-rule="evenodd"></path>
                </svg>
            </button>
        </div>
        <hr class="border-zinc-700 mb-3">
        <!-- ویدئو -->
        <h2 class="text-xl font-bold mb-3 text-center" x-text="item.title"></h2>
        <div class="p-6 ">
            <template x-if="item.type === 'video' && item.video">
                <video
                    x-ref="videoPlayer"
                    controls
                    class="w-full max-h-[70vh] object-contain rounded-lg"
                    height="600"
                >
                    <source :src="item.video" type="video/mp4">
                    مرورگر شما از ویدئو پشتیبانی نمی‌کند.
                </video>
            </template>

            <template x-if="item.type !== 'video' && gallery.length">
                <div
                    class="relative w-full h-96 overflow-hidden rounded-lg"
                    @mouseenter="pauseAutoSlide"
                    @mouseleave="startAutoSlide"
                >
                    <template x-for="(image, index) in gallery" :key="index">
                        <img
                            :src="image"
                            class="absolute inset-0 w-full h-full object-contain transition-opacity duration-700"
                            :class="currentSlide === index ? 'opacity-100' : 'opacity-0'"
                        >
                    </template>

                    <button
                        class="absolute top-1/2 left-2 -translate-y-1/2 bg-black/50 text-white px-2 py-1 rounded-full"
                        @click="prevSlide"
                    >‹
                    </button>
                    <button
                        class="absolute top-1/2 right-2 -translate-y-1/2 bg-black/50 text-white px-2 py-1 rounded-full"
                        @click="nextSlide"
                    >›
                    </button>
                </div>
            </template>
        </div>
    </div>
</div>
