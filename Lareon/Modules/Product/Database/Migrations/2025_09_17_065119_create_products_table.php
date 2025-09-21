<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnUpdate()->cascadeOnDelete();
            $table->string('title');
            $table->string('slug' ,'20')->unique();
            $table->text('excerpt')->nullable();
            $table->longText('body')->nullable();
            $table->string('featured_image')->nullable();
            $table->json('images')->nullable();
            $table->json('features')->nullable();
            $table->json('features_soon')->nullable();
            $table->json('requirements')->nullable();
            $table->string('catalog')->nullable();
            $table->boolean('publish')->default(false);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
