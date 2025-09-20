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
        Schema::create('pages', function (Blueprint $table) {
            $table->id();
            $table->string('label')->nullable();
            $table->unsignedBigInteger('parent_id')->default(0);
            $table->string('title');
            $table->string('slug')->unique();
            $table->text('body')->nullable();
            $table->text('excerpt')->nullable();
            $table->string('featured_image' ,200)->nullable();
            $table->string('template')->nullable();
            $table->tinyInteger('publish_status')->default(1);
            $table->timestamp('published_at')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pages');
    }
};
