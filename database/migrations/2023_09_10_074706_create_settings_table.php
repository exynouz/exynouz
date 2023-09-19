<?php

use App\Models\setting;
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
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->string('key');
            $table->string('label');
            $table->string('value')->nullable();
            $table->string('type');
            $table->timestamps();
        });

        setting::create([
            'key'=>'_site_name',
            'label'=>'judul situs',
            'value'=>'website sederhana',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_location',
            'label'=>'Alamat',
            'value'=>'Setu, Kabupaten bekasi, Indonesia',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_youtube',
            'label'=>'Youtube',
            'value'=>'https://www.youtube.com/channel/UCqdDoWm6lGUtZZ4FGbpfY3A',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_instagram',
            'label'=>'Instagram',
            'value'=>'https://www.instagram.com/valn_exy/',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_whastapp',
            'label'=>'whatsapp',
            'value'=>'https://wa.me/08988668262',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_facebook',
            'label'=>'Facebook',
            'value'=>'https://www.facebook.com/exynouz',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_ulangtahun',
            'label'=>'Ulang Tahun',
            'value'=>'31 oktober 2005',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_website',
            'label'=>'Website',
            'value'=>'https://www.instagram.com/valn_exy/',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_Nohp',
            'label'=>'No Hp',
            'value'=>'08988668262',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_kota',
            'label'=>'kota',
            'value'=>'Bekasi Pride',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_umur',
            'label'=>'umur',
            'value'=>'18th',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_email',
            'label'=>'email',
            'value'=>'311005bksvalen@gmail.com',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_tingkatan',
            'label'=>'tingkatan',
            'value'=>'junior',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_pekerjaan',
            'label'=>'pekerjaan',
            'value'=>'siswa',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_HTML',
            'label'=>'keahlian HTML',
            'value'=>'80',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_CSS',
            'label'=>'keahlian CSS',
            'value'=>'90',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_JS',
            'label'=>'keahlian JS',
            'value'=>'40',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_PHP',
            'label'=>'keahlian PHP',
            'value'=>'80',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_Wordpres',
            'label'=>'keahlian wordpres',
            'value'=>'80',
            'type'=>'text',
        ]);
        setting::create([
            'key'=>'_photoshop',
            'label'=>'keahlian photoshop',
            'value'=>'80',
            'type'=>'text',
        ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('settings');
    }
};
