<?php

use Illuminate\Support\Facades\Schema;
use Jenssegers\Mongodb\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class InitialCollections extends Migration
{
    protected $connection = 'mongodb';

    public function up()
    {
        Schema::connection($this->connection)
            ->table('testdb', function (Blueprint $collection)
            {
                $collection->index(['index1', 'index2']);
                $collection->unique(['unique1', 'unique2']);
            });
    }
}
