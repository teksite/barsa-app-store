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
        Schema::create('companies', function (Blueprint $table) {
            $table->id();
            $table->string('url')->nullable()->unique();
            $table->string('national_id',12)->unique();
            $table->string('title');
            $table->char('telephone',20)->nullable()->unique();
            $table->char('phone',20)->nullable()->unique();
            $table->char('email',200)->nullable()->unique();
            $table->tinyInteger('type')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('companies');
    }
};
