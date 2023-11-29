<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        /* Schema::create('schema', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
        }); */

        //$file = dirname(__DIR__,1)."/sql_files/database_name_20160527.sql";
        //DB::unprepared(File::get($file));

        DB::unprepared(file_get_contents(__dir__ . '/sql_files/schema_29112023.sql'));
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //Schema::dropIfExists('schema');
        DB::unprepared(file_get_contents(__dir__ . '/sql_files/drop_schema.sql'));
    }
};
