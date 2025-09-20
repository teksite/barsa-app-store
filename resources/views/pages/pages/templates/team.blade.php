@php($teams = \Lareon\Modules\Team\App\Models\Team::all())

<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{ route('admin.pages.edit', $page) }}</x-slot>
    <main id="page-content" class="team-page" role="main" aria-labelledby="team-heading">
        <section class="inner-container py-24" itemscope itemtype="https://schema.org/Organization">
            <i class="mb-6 mx-auto tkicon fill-none stroke-second_color" data-icon="users" size="48" aria-hidden="true"></i>
            <h1 id="team-heading" class="capitalize text-center" itemprop="name">
                {{ __('stronger together') }}
            </h1>
            <h2 class="text-zinc-600 font-semibold text-center mt-2" itemprop="alternateName">
                {{ __('meet our team') }}
            </h2>
            <p class="text-center mt-4" itemprop="description">
                {{ __('great ideas grow when shared. Together, we shape and create what one alone never could') }}
            </p>
            <!-- Intro Text -->
            <div class="mt-12">
                <p>
                    {{__('In our team, creativity, skill, and expertise come together to shape your graphic and digital projects in the best possible way. From logo and corporate identity design to brochures, advertising content, and packaging, every detail is crafted with precision and elegance. Our team also has extensive experience in website design—whether building websites with WordPress and ready-made templates, or developing custom CMS solutions from scratch, fully tailored and coded to meet each client’s unique requirements. Every team member contributes from the initial concept to the final implementation, ensuring your brand is presented in a seamless, professional, and creative way. Our collaborative approach guarantees that projects are not only visually appealing but also efficient and aligned with modern industry standards. Each design we deliver reflects our team’s attention to detail, innovation, and dedication, creating a unique experience for your audience.')}}
                </p>
            </div>

           <section class="py-24">
               <h2 class="text-center mb-12">team members</h2> <!-- Hidden for screen readers -->
               <ul class="flex flex-col xl:flex-row items-stretch justify-center gap-6" role="list">
                   <li class="flex-1"
                       role="listitem"
                       aria-label="{{ __('team member: :name', ['name'=>__(config('app.name'))]) }}">
                       <div class="">
                           <x-person-card
                               :person="null"
                               :title="false"
                               :description="false"
                               itemprop="employee"
                               aria-hidden="false"
                           />
                       </div>
                   </li>
                   @foreach($teams as $team)
                       <li class="group flex-1"
                           role="listitem"
                           aria-label="{{ __('team member: :name', ['name'=>$team->name]) }}">

                           <div class="perspective-origin-left transition-all duration-150 group-hover:rotate-y-0">
                               <x-person-card
                                   :person="$team"
                                   :title="false"
                                   :description="false"
                                   itemprop="employee"
                                   aria-hidden="false"
                               />
                           </div>
                       </li>


                   @endforeach
               </ul>
           </section>

        </section>
    </main>
</x-client-layout>
